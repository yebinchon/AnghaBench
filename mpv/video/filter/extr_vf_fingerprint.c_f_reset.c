
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int num_entries; TYPE_1__* entries; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_2__ {int print; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void f_reset(struct mp_filter *f)
{
    struct priv *p = f->priv;

    for (int n = 0; n < p->num_entries; n++)
        talloc_free(p->entries[n].print);
    p->num_entries = 0;
}
