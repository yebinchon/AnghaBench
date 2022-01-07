
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_4__ {int line; int column; int position; char* text; } ;
typedef TYPE_1__ json_error_t ;


 size_t JSON_COMPACT ;
 size_t JSON_ENSURE_ASCII ;
 size_t JSON_INDENT (int) ;
 size_t JSON_PRESERVE_ORDER ;
 size_t JSON_REAL_PRECISION (int) ;
 size_t JSON_SORT_KEYS ;
 int _O_BINARY ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 int fprintf (int ,char*,int,...) ;
 size_t fread (char*,int,size_t,int ) ;
 int free (char*) ;
 scalar_t__ getenv (char*) ;
 int getenv_int (char*) ;
 int json_decref (int *) ;
 int json_dumpf (int *,int ,size_t) ;
 int * json_loadf (int ,int ,TYPE_1__*) ;
 int * json_loads (int ,int ,TYPE_1__*) ;
 int json_object_seed (int) ;
 char* realloc (char*,size_t) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strip (char*) ;

int use_env()
{
    int indent, precision;
    size_t flags = 0;
    json_t *json;
    json_error_t error;
    indent = getenv_int("JSON_INDENT");
    if(indent < 0 || indent > 31) {
        fprintf(stderr, "invalid value for JSON_INDENT: %d\n", indent);
        return 2;
    }
    if(indent > 0)
        flags |= JSON_INDENT(indent);

    if(getenv_int("JSON_COMPACT") > 0)
        flags |= JSON_COMPACT;

    if(getenv_int("JSON_ENSURE_ASCII"))
        flags |= JSON_ENSURE_ASCII;

    if(getenv_int("JSON_PRESERVE_ORDER"))
        flags |= JSON_PRESERVE_ORDER;

    if(getenv_int("JSON_SORT_KEYS"))
        flags |= JSON_SORT_KEYS;

    precision = getenv_int("JSON_REAL_PRECISION");
    if(precision < 0 || precision > 31) {
        fprintf(stderr, "invalid value for JSON_REAL_PRECISION: %d\n",
                precision);
        return 2;
    }

    if(getenv("HASHSEED"))
        json_object_seed(getenv_int("HASHSEED"));

    if(precision > 0)
        flags |= JSON_REAL_PRECISION(precision);

    if(getenv_int("STRIP")) {

        size_t size = 0, used = 0;
        char *buffer = ((void*)0), *buf_ck = ((void*)0);

        while(1) {
            size_t count;

            size = (size == 0 ? 128 : size * 2);
            buf_ck = realloc(buffer, size);
            if(!buf_ck) {
                fprintf(stderr, "Unable to allocate %d bytes\n", (int)size);
                free(buffer);
                return 1;
            }
            buffer = buf_ck;

            count = fread(buffer + used, 1, size - used, stdin);
            if(count < size - used) {
                buffer[used + count] = '\0';
                break;
            }
            used += count;
        }

        json = json_loads(strip(buffer), 0, &error);
        free(buffer);
    }
    else
        json = json_loadf(stdin, 0, &error);

    if(!json) {
        fprintf(stderr, "%d %d %d\n%s\n",
            error.line, error.column,
            error.position, error.text);
        return 1;
    }

    json_dumpf(json, stdout, flags);
    json_decref(json);

    return 0;
}
