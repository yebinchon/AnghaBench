
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int PlannerInfo ;
typedef int Param ;
typedef int Oid ;


 int * generate_new_exec_param (int *,int ,int ,int ) ;

Param *
SS_make_initplan_output_param(PlannerInfo *root,
         Oid resulttype, int32 resulttypmod,
         Oid resultcollation)
{
 return generate_new_exec_param(root, resulttype,
           resulttypmod, resultcollation);
}
