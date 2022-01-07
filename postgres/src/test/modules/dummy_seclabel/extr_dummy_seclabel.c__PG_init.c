
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummy_object_relabel ;
 int register_label_provider (char*,int ) ;

void
_PG_init(void)
{
 register_label_provider("dummy", dummy_object_relabel);
}
