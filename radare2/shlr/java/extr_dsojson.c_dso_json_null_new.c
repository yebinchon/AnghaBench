
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; } ;
typedef TYPE_1__ DsoJsonObj ;


 int DSO_JSON_NULL ;
 TYPE_1__* calloc (int,int) ;
 int get_type_info (int ) ;

DsoJsonObj * dso_json_null_new () {
 DsoJsonObj *x = calloc (sizeof (DsoJsonObj), 1);
 if (!x) return ((void*)0);
 x->info = get_type_info (DSO_JSON_NULL);
 return x;
}
