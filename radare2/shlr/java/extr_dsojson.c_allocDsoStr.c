
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; void* data; } ;
typedef TYPE_1__ DsoJsonStr ;


 void* calloc (int,int) ;
 int free (void*) ;

__attribute__((used)) static void allocDsoStr (DsoJsonStr *dsoStr, unsigned int sz) {
 free (dsoStr->data);
 if (sz > 0) dsoStr->data = calloc (sz, 1);
 else dsoStr->data = calloc (10, 1);
 dsoStr->len = sz;
}
