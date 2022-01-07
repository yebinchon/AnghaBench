
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int check_object_relabel_type ;
struct TYPE_4__ {int hook; int provider_name; } ;
typedef int MemoryContext ;
typedef TYPE_1__ LabelProvider ;


 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int label_provider_list ;
 int lappend (int ,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 int pstrdup (char const*) ;

void
register_label_provider(const char *provider_name, check_object_relabel_type hook)
{
 LabelProvider *provider;
 MemoryContext oldcxt;

 oldcxt = MemoryContextSwitchTo(TopMemoryContext);
 provider = palloc(sizeof(LabelProvider));
 provider->provider_name = pstrdup(provider_name);
 provider->hook = hook;
 label_provider_list = lappend(label_provider_list, provider);
 MemoryContextSwitchTo(oldcxt);
}
