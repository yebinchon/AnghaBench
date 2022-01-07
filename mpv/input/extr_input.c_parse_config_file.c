
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct input_ctx {int global; } ;
typedef int stream_t ;
struct TYPE_4__ {scalar_t__ start; } ;
typedef TYPE_1__ bstr ;


 int MP_ERR (struct input_ctx*,char*,char*) ;
 int MP_VERBOSE (struct input_ctx*,char*,char*,...) ;
 int free_stream (int *) ;
 char* mp_get_user_path (void*,int ,char*) ;
 int parse_config (struct input_ctx*,int,TYPE_1__,char*,int *) ;
 int * stream_open (char*,int ) ;
 TYPE_1__ stream_read_complete (int *,void*,int) ;
 int stream_skip_bom (int *) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static int parse_config_file(struct input_ctx *ictx, char *file, bool warn)
{
    int r = 0;
    void *tmp = talloc_new(((void*)0));
    stream_t *s = ((void*)0);

    file = mp_get_user_path(tmp, ictx->global, file);

    s = stream_open(file, ictx->global);
    if (!s) {
        MP_ERR(ictx, "Can't open input config file %s.\n", file);
        goto done;
    }
    stream_skip_bom(s);
    bstr data = stream_read_complete(s, tmp, 1000000);
    if (data.start) {
        MP_VERBOSE(ictx, "Parsing input config file %s\n", file);
        int num = parse_config(ictx, 0, data, file, ((void*)0));
        MP_VERBOSE(ictx, "Input config file %s parsed: %d binds\n", file, num);
        r = 1;
    } else {
        MP_ERR(ictx, "Error reading input config file %s\n", file);
    }

done:
    free_stream(s);
    talloc_free(tmp);
    return r;
}
