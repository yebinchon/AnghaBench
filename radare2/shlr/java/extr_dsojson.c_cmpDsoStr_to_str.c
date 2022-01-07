
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ DsoJsonStr ;


 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int cmpDsoStr_to_str (DsoJsonStr *dsoStr1, char *dsoStr2) {
 if (dsoStr1 && dsoStr1->data && dsoStr2)
  return strcmp (dsoStr1->data, dsoStr2);
 return -1;
}
