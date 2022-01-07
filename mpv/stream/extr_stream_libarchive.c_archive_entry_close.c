
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int src; int mpa; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;


 int free_stream (int ) ;
 int mp_archive_free (int ) ;

__attribute__((used)) static void archive_entry_close(stream_t *s)
{
    struct priv *p = s->priv;
    mp_archive_free(p->mpa);
    free_stream(p->src);
}
