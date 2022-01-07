
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_open_args {int flags; int url; TYPE_1__* global; int cancel; scalar_t__ sinfo; } ;
struct stream {int dummy; } ;
struct mp_log {int dummy; } ;
struct TYPE_2__ {int log; } ;


 int STREAM_NO_MATCH ;
 int STREAM_OK ;
 int STREAM_SILENT ;
 int STREAM_UNSAFE ;
 int STREAM_UNSUPPORTED ;
 int assert (int ) ;
 int mp_cancel_test (int ) ;
 int mp_err (struct mp_log*,char*,...) ;
 struct mp_log* mp_log_new (int *,int ,char*) ;
 int stream_create_instance (scalar_t__,struct stream_open_args*,struct stream**) ;
 scalar_t__* stream_list ;
 int talloc_free (struct mp_log*) ;

int stream_create_with_args(struct stream_open_args *args, struct stream **ret)

{
    assert(args->url);

    int r = STREAM_NO_MATCH;
    *ret = ((void*)0);


    if (args->sinfo) {
        r = stream_create_instance(args->sinfo, args, ret);
    } else {
        for (int i = 0; stream_list[i]; i++) {
            r = stream_create_instance(stream_list[i], args, ret);
            if (r == STREAM_OK)
                break;
            if (r == STREAM_NO_MATCH || r == STREAM_UNSUPPORTED)
                continue;
            if (r == STREAM_UNSAFE)
                continue;
            break;
        }
    }

    if (!*ret && !(args->flags & STREAM_SILENT) && !mp_cancel_test(args->cancel))
    {
        struct mp_log *log = mp_log_new(((void*)0), args->global->log, "!stream");

        if (r == STREAM_UNSAFE) {
            mp_err(log, "\nRefusing to load potentially unsafe URL from a playlist.\n"
                   "Use --playlist=file or the --load-unsafe-playlists option to "
                   "load it anyway.\n\n");
        } else if (r == STREAM_NO_MATCH || r == STREAM_UNSUPPORTED) {
            mp_err(log, "No protocol handler found to open URL %s\n", args->url);
            mp_err(log, "The protocol is either unsupported, or was disabled "
                        "at compile-time.\n");
        } else {
            mp_err(log, "Failed to open %s.\n", args->url);
        }

        talloc_free(log);
    }

    return r;
}
