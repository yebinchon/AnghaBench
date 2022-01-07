
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct TYPE_2__ {int name; } ;


 int talloc_free (int ) ;
 int talloc_strdup (struct mp_filter*,char const*) ;

void mp_filter_set_name(struct mp_filter *f, const char *name)
{
    talloc_free(f->in->name);
    f->in->name = talloc_strdup(f, name);
}
