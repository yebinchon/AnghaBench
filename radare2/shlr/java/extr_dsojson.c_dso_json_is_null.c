
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 scalar_t__ DSO_JSON_NULL ;
 scalar_t__ get_type (int *) ;

__attribute__((used)) static int dso_json_is_null (DsoJsonObj *y) {
 return get_type (y) == DSO_JSON_NULL;
}
