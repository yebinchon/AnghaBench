
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int log; int global; struct priv* priv; } ;
struct priv {int current; TYPE_1__* opts; int frame; } ;
struct TYPE_2__ {int opts; scalar_t__ outdir; } ;


 int MP_INFO (struct vo*,char*,char*) ;
 int image_writer_file_ext (int ) ;
 int mp_image_unrefp (int *) ;
 char* mp_path_join (void*,scalar_t__,char*) ;
 scalar_t__ strlen (scalar_t__) ;
 char* talloc_asprintf (void*,char*,int ,int ) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 int write_image (int ,int ,char*,int ,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (!p->current)
        return;

    (p->frame)++;

    void *t = talloc_new(((void*)0));
    char *filename = talloc_asprintf(t, "%08d.%s", p->frame,
                                     image_writer_file_ext(p->opts->opts));

    if (p->opts->outdir && strlen(p->opts->outdir))
        filename = mp_path_join(t, p->opts->outdir, filename);

    MP_INFO(vo, "Saving %s\n", filename);
    write_image(p->current, p->opts->opts, filename, vo->global, vo->log);

    talloc_free(t);
    mp_image_unrefp(&p->current);
}
