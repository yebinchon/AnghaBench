
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ DsoJsonStr ;
typedef int DsoJsonObj ;


 TYPE_1__* dso_json_get_str (int *) ;

__attribute__((used)) static char * dso_json_get_str_data (DsoJsonObj *dso_obj) {
 DsoJsonStr * str = dso_json_get_str (dso_obj);
 if (str) return str->data;
 return ((void*)0);
}
