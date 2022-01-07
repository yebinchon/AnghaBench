
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int natts; int * attnames; } ;
typedef TYPE_1__ LogicalRepRelation ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
logicalrep_rel_att_by_name(LogicalRepRelation *remoterel, const char *attname)
{
 int i;

 for (i = 0; i < remoterel->natts; i++)
 {
  if (strcmp(remoterel->attnames[i], attname) == 0)
   return i;
 }

 return -1;
}
