
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVT_DDLCommandEnd ;
 int EVT_SQLDrop ;
 int EVT_TableRewrite ;
 int EventCacheLookup (int ) ;
 scalar_t__ list_length (int ) ;

bool
trackDroppedObjectsNeeded(void)
{




 return list_length(EventCacheLookup(EVT_SQLDrop)) > 0 ||
  list_length(EventCacheLookup(EVT_TableRewrite)) > 0 ||
  list_length(EventCacheLookup(EVT_DDLCommandEnd)) > 0;
}
