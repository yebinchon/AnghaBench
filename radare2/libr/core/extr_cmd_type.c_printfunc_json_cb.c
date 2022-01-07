
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int printFunctionType (int *,char const*) ;

__attribute__((used)) static int printfunc_json_cb(void *user, const char *k, const char *v) {
 printFunctionType ((RCore *)user, k);
 return 1;
}
