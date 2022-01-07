
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* tag; scalar_t__ (* scb ) (char*,TYPE_2__*,int ) ;struct TYPE_5__* next; int data; } ;
typedef TYPE_1__ restart_data_cb ;
struct TYPE_6__ {int * f; } ;
typedef TYPE_2__ restart_cb_ctx ;
typedef int mode_t ;
typedef int FILE ;


 int S_IRUSR ;
 int S_IWUSR ;
 char* calloc (int,size_t) ;
 TYPE_1__* cb_stack ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int perror (char*) ;
 size_t strlen (char const*) ;
 scalar_t__ stub1 (char*,TYPE_2__*,int ) ;
 int umask (int) ;

__attribute__((used)) static int restart_save(const char *file) {


    size_t flen = strlen(file);
    const char *ext = ".meta";
    char *metafile = calloc(1, flen + strlen(ext) + 1);
    memcpy(metafile, file, flen);
    memcpy(metafile+flen, ext, strlen(ext));



    mode_t oldmask = umask(~(S_IRUSR | S_IWUSR));
    FILE *f = fopen(metafile, "w");
    umask(oldmask);
    if (f == ((void*)0)) {

        perror("failed to write metadata file");
        return -1;
    }

    restart_data_cb *cb = cb_stack;
    restart_cb_ctx ctx;
    ctx.f = f;
    while (cb != ((void*)0)) {

        fprintf(f, "T%s\n", cb->tag);
        if (cb->scb(cb->tag, &ctx, cb->data) != 0) {
            return -1;
        }

        cb = cb->next;
    }

    fclose(f);
    free(metafile);

    return 0;
}
