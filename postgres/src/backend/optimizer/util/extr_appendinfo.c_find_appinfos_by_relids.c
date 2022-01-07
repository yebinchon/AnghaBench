
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** append_rel_array; } ;
typedef int Relids ;
typedef TYPE_1__ PlannerInfo ;
typedef int AppendRelInfo ;


 int ERROR ;
 int bms_next_member (int ,int) ;
 int bms_num_members (int ) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc (int) ;

AppendRelInfo **
find_appinfos_by_relids(PlannerInfo *root, Relids relids, int *nappinfos)
{
 AppendRelInfo **appinfos;
 int cnt = 0;
 int i;

 *nappinfos = bms_num_members(relids);
 appinfos = (AppendRelInfo **) palloc(sizeof(AppendRelInfo *) * *nappinfos);

 i = -1;
 while ((i = bms_next_member(relids, i)) >= 0)
 {
  AppendRelInfo *appinfo = root->append_rel_array[i];

  if (!appinfo)
   elog(ERROR, "child rel %d not found in append_rel_array", i);

  appinfos[cnt++] = appinfo;
 }
 return appinfos;
}
