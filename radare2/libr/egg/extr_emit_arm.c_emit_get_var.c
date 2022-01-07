
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static void emit_get_var(REgg *egg, int type, char *out, int idx) {
 switch (type) {
 case 0: sprintf (out, "sp, %d", idx - 1); break;
 case 1: sprintf (out, "r%d", idx); break;

 }
}
