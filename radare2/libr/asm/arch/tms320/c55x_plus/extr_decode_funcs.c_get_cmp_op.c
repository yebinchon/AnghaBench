
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 char* strdup (char const*) ;

char *get_cmp_op(ut32 idx) {
 const char *res = ((void*)0);
 switch (idx) {
 case 0: res = "=="; break;
 case 1: res = "!="; break;
 case 2: res = "<"; break;
 case 3: res = ">="; break;
 }
 return res? strdup (res): ((void*)0);
}
