
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent_relid; } ;
typedef int * Relids ;
typedef int PlannerInfo ;
typedef TYPE_1__ AppendRelInfo ;


 int * adjust_child_relids (int *,int,TYPE_1__**) ;
 int * bms_add_member (int *,int ) ;
 int bms_equal (int *,int *) ;
 int bms_free (int *) ;
 int bms_overlap (int *,int *) ;
 TYPE_1__** find_appinfos_by_relids (int *,int *,int*) ;
 int pfree (TYPE_1__**) ;

Relids
adjust_child_relids_multilevel(PlannerInfo *root, Relids relids,
          Relids child_relids, Relids top_parent_relids)
{
 AppendRelInfo **appinfos;
 int nappinfos;
 Relids parent_relids = ((void*)0);
 Relids result;
 Relids tmp_result = ((void*)0);
 int cnt;





 if (!bms_overlap(relids, top_parent_relids))
  return relids;

 appinfos = find_appinfos_by_relids(root, child_relids, &nappinfos);


 for (cnt = 0; cnt < nappinfos; cnt++)
 {
  AppendRelInfo *appinfo = appinfos[cnt];

  parent_relids = bms_add_member(parent_relids, appinfo->parent_relid);
 }


 if (!bms_equal(parent_relids, top_parent_relids))
 {
  tmp_result = adjust_child_relids_multilevel(root, relids,
             parent_relids,
             top_parent_relids);
  relids = tmp_result;
 }

 result = adjust_child_relids(relids, nappinfos, appinfos);


 if (tmp_result)
  bms_free(tmp_result);
 bms_free(parent_relids);
 pfree(appinfos);

 return result;
}
