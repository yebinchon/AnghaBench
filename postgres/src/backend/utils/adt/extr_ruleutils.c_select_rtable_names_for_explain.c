
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dpns ;
struct TYPE_4__ {int * rtable_names; int ctes; int * rtable; } ;
typedef TYPE_1__ deparse_namespace ;
typedef int List ;
typedef int Bitmapset ;


 int NIL ;
 int memset (TYPE_1__*,int ,int) ;
 int set_rtable_names (TYPE_1__*,int ,int *) ;

List *
select_rtable_names_for_explain(List *rtable, Bitmapset *rels_used)
{
 deparse_namespace dpns;

 memset(&dpns, 0, sizeof(dpns));
 dpns.rtable = rtable;
 dpns.ctes = NIL;
 set_rtable_names(&dpns, NIL, rels_used);


 return dpns.rtable_names;
}
