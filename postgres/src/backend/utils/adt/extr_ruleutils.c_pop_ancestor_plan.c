
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ancestors; } ;
typedef TYPE_1__ deparse_namespace ;


 int list_free (int ) ;

__attribute__((used)) static void
pop_ancestor_plan(deparse_namespace *dpns, deparse_namespace *save_dpns)
{

 list_free(dpns->ancestors);


 *dpns = *save_dpns;
}
