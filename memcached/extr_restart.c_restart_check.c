
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* ccb ) (int ,TYPE_2__*,int ) ;int data; int tag; } ;
typedef TYPE_1__ restart_data_cb ;
struct TYPE_6__ {char* line; int done; TYPE_1__* cb; int * f; } ;
typedef TYPE_2__ restart_cb_ctx ;
typedef int FILE ;


 scalar_t__ RESTART_DONE ;
 int abort () ;
 char* calloc (int,size_t) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ restart_get_kv (TYPE_2__*,int *,int *) ;
 int stderr ;
 size_t strlen (char const*) ;
 scalar_t__ stub1 (int ,TYPE_2__*,int ) ;
 int unlink (char*) ;

__attribute__((used)) static int restart_check(const char *file) {

    size_t flen = strlen(file);
    const char *ext = ".meta";
    char *metafile = calloc(1, flen + strlen(ext) + 1);
    memcpy(metafile, file, flen);
    memcpy(metafile+flen, ext, strlen(ext));

    FILE *f = fopen(metafile, "r");
    if (f == ((void*)0)) {
        fprintf(stderr, "[restart] no metadata save file, starting with a clean cache\n");
        return -1;
    }

    restart_cb_ctx ctx;

    ctx.f = f;
    ctx.cb = ((void*)0);
    ctx.line = ((void*)0);
    ctx.done = 0;
    if (restart_get_kv(&ctx, ((void*)0), ((void*)0)) != RESTART_DONE) {


        fprintf(stderr, "[restart] corrupt metadata file\n");

        abort();
    }
    if (ctx.cb == ((void*)0)) {
        fprintf(stderr, "[restart] Failed to read a tag from metadata file\n");
        abort();
    }


    bool failed = 0;
    while (!ctx.done) {
        restart_data_cb *cb = ctx.cb;
        if (cb->ccb(cb->tag, &ctx, cb->data) != 0) {
            failed = 1;
            break;
        }
    }

    if (ctx.line)
        free(ctx.line);

    fclose(f);

    unlink(metafile);
    free(metafile);

    if (failed) {
        fprintf(stderr, "[restart] failed to valiate metadata, starting with a clean cache\n");
        return -1;
    } else {
        return 0;
    }
}
