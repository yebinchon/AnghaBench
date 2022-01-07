
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _num; } ;
struct TYPE_6__ {TYPE_1__ val; int info; } ;
typedef TYPE_2__ DsoJsonObj ;
typedef int DsoJsonNum ;


 int DSO_JSON_NUM ;
 int calloc (int,int) ;
 TYPE_2__* dso_json_null_new () ;
 int get_type_info (int ) ;

DsoJsonObj * dso_json_num_new () {
 DsoJsonObj *x = dso_json_null_new ();
 if (!x) return ((void*)0);
 x->info = get_type_info (DSO_JSON_NUM);
 x->val._num = calloc (sizeof (DsoJsonNum), 1);
 return x;
}
