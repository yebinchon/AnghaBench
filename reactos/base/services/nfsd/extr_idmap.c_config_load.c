
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_config {int dummy; } ;
struct config_pair {int key; char* value; int value_len; } ;
struct config_option {scalar_t__ type; int offset; int max_len; } ;
typedef int buffer ;
typedef int UINT ;
typedef int FILE ;


 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ FAILED (int ) ;
 int NO_ERROR ;
 int StringCchCopyNA (char*,int ,char*,int ) ;
 scalar_t__ TYPE_INT ;
 int config_find_option (struct config_pair*,struct config_option const**) ;
 int config_parse_pair (char*,struct config_pair*) ;
 int eprintf (char*,...) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (char) ;
 int parse_uint (char*,int *) ;

__attribute__((used)) static int config_load(
    struct idmap_config *config,
    const char *filename)
{
    char buffer[1024], *pos;
    FILE *file;
    struct config_pair pair;
    const struct config_option *option;
    int line = 0;
    int status = NO_ERROR;


    file = fopen(filename, "r");
    if (file == ((void*)0)) {
        eprintf("config_load() failed to open file '%s'\n", filename);
        goto out;
    }


    while (fgets(buffer, sizeof(buffer), file)) {
        line++;


        pos = buffer;
        while (isspace(*pos)) pos++;


        if (*pos == '#' || *pos == 0)
            continue;


        status = config_parse_pair(buffer, &pair);
        if (status) {
            eprintf("error on line %d: %s\n", line, buffer);
            break;
        }


        status = config_find_option(&pair, &option);
        if (status) {
            eprintf("unrecognized option '%s' on line %d: %s\n",
                pair.key, line, buffer);
            status = ERROR_INVALID_PARAMETER;
            break;
        }

        if (option->type == TYPE_INT) {
            if (!parse_uint(pair.value, (UINT*)((char*)config + option->offset))) {
                status = ERROR_INVALID_PARAMETER;
                eprintf("expected a number on line %d: %s=\"%s\"\n",
                    line, pair.key, pair.value);
                break;
            }
        } else {
            if (FAILED(StringCchCopyNA((char*)config + option->offset,
                    option->max_len, pair.value, pair.value_len))) {
                status = ERROR_BUFFER_OVERFLOW;
                eprintf("overflow on line %d: %s=\"%s\"\n",
                    line, pair.key, pair.value);
                break;
            }
        }
    }

    fclose(file);
out:
    return status;
}
