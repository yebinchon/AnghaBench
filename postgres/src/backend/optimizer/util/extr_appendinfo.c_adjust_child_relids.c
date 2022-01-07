
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int child_relid; int parent_relid; } ;
typedef int * Relids ;
typedef int Bitmapset ;
typedef TYPE_1__ AppendRelInfo ;


 int * bms_add_member (int *,int ) ;
 int * bms_copy (int *) ;
 int * bms_del_member (int *,int ) ;
 scalar_t__ bms_is_member (int ,int *) ;

Relids
adjust_child_relids(Relids relids, int nappinfos, AppendRelInfo **appinfos)
{
 Bitmapset *result = ((void*)0);
 int cnt;

 for (cnt = 0; cnt < nappinfos; cnt++)
 {
  AppendRelInfo *appinfo = appinfos[cnt];


  if (bms_is_member(appinfo->parent_relid, relids))
  {

   if (!result)
    result = bms_copy(relids);

   result = bms_del_member(result, appinfo->parent_relid);
   result = bms_add_member(result, appinfo->child_relid);
  }
 }


 if (result)
  return result;


 return relids;
}
