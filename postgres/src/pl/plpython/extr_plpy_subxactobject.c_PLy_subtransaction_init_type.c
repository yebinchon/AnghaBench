
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int PLy_SubtransactionType ;
 scalar_t__ PyType_Ready (int *) ;
 int elog (int ,char*) ;

void
PLy_subtransaction_init_type(void)
{
 if (PyType_Ready(&PLy_SubtransactionType) < 0)
  elog(ERROR, "could not initialize PLy_SubtransactionType");
}
