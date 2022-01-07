
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int R ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int replace (char*,char*,char*,...) ;
 char* strstr (char*,char*) ;
 int substitute (char*,char*,char*,char*) ;
 int u ;
 int uu ;

void decode_braces(tms320_dasm_t * dasm)
{
 char * pos;

 pos = strstr(dasm->syntax, "[(saturate]");
 if (pos) {
  replace(pos, "[)", ")[");
  replace(dasm->syntax, "[(saturate]", "%s", "(saturate");
 }

 if (field_valid(dasm, R)) {
  pos = strstr(dasm->syntax, "[rnd(]");
  if (pos) {
   replace(pos, "[)", "%s", field_value(dasm, R) ? ")[" : "[");
   replace(dasm->syntax, "[rnd(]", "%s", field_value(dasm, R) ? "rnd(" : "");
  }
 }

 if (field_valid(dasm, u)) {
  pos = strstr(dasm->syntax, "[uns(]");
  if (pos) {
   replace(pos, "[)", "%s", field_value(dasm, u) ? ")[" : "[");
   replace(dasm->syntax, "[uns(]", "%s", field_value(dasm, u) ? "uns(" : "");
  }
 }

 if (field_valid(dasm, uu)) {
  bool parallel = !!strstr (dasm->syntax, "::");


  replace(dasm->syntax, "[uns(]", "%s", field_value(dasm, uu) & 2 ? "uns(" : "");
  replace(dasm->syntax, "[)]", "%s", field_value(dasm, uu) & 2 ? ")" : "");

  if (parallel) {
   replace(dasm->syntax, "[uns(]", "%s", field_value(dasm, uu) & 2 ? "uns(" : "");
   replace(dasm->syntax, "[)]", "%s", field_value(dasm, uu) & 2 ? ")" : "");
  }


  replace(dasm->syntax, "[uns(]", "%s", field_value(dasm, uu) & 1 ? "uns(" : "");
  replace(dasm->syntax, "[)]", "%s", field_value(dasm, uu) & 1 ? ")" : "");

  if (parallel) {
   replace(dasm->syntax, "[uns(]", "%s", field_value(dasm, uu) & 1 ? "uns(" : "");
   replace(dasm->syntax, "[)]", "%s", field_value(dasm, uu) & 1 ? ")" : "");
  }
 }



 substitute(dasm->syntax, "[]", "%s", "");
}
