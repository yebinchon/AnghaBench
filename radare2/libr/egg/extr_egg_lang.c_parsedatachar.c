
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* dstval; int inlinectr; int ndstval; int stackframe; char* dstvar; int mode; scalar_t__ slurp; } ;
struct TYPE_10__ {TYPE_2__ lang; TYPE_1__* remit; } ;
struct TYPE_8__ {int (* comment ) (TYPE_3__*,char*,char*,char*,int) ;} ;
typedef TYPE_3__ REgg ;


 int CTX ;
 int NORMAL ;
 int R_FREE (char*) ;
 int atoi (char*) ;
 scalar_t__ is_space (char) ;
 int r_egg_printf (TYPE_3__*,char*,...) ;
 int rcc_context (TYPE_3__*,int) ;
 int stub1 (TYPE_3__*,char*,char*,char*,int) ;

__attribute__((used)) static int parsedatachar(REgg *egg, char c) {
 char *str;
 int i, j;

 if (!egg->lang.dstval) {
  return 0;
 }

 if (c == '{') {
  rcc_context (egg, 1);
  if (++(egg->lang.inlinectr) == 1) {
   return egg->lang.ndstval = 0;
  }
 } else if (egg->lang.inlinectr == 0) {

  if (c == ')') {
   egg->lang.stackframe = atoi (egg->lang.dstval);
   egg->lang.ndstval = 0;
  } else {
   egg->lang.dstval[egg->lang.ndstval++] = c;
  }
  return 0;
 }

 if (c == '}') {
  if (CTX < 2) {
   egg->lang.inlinectr = 0;
   rcc_context (egg, -1);
   egg->lang.slurp = 0;
   egg->lang.mode = NORMAL;

   if (egg->lang.dstval && egg->lang.dstvar) {
    egg->lang.dstval[egg->lang.ndstval] = '\0';
    egg->remit->comment (egg, "data (%s)(%s)size=(%d)\n",
     egg->lang.dstvar, egg->lang.dstval, egg->lang.stackframe);
    r_egg_printf (egg, ".data\n");
    for (str = egg->lang.dstval; is_space (*str); str++) {
     ;
    }
    j = (egg->lang.stackframe)? egg->lang.stackframe: 1;

    r_egg_printf (egg, "%s:\n", egg->lang.dstvar);
    for (i = 1; i <= j; i++) {
     if (*str == '"') {
      r_egg_printf (egg, ".ascii %s%s\n", egg->lang.dstval, (i == j)? "\"\\x00\"": "");
     } else {
      r_egg_printf (egg, ".long %s\n", egg->lang.dstval);
     }
    }
    r_egg_printf (egg, ".text\n");
    R_FREE (egg->lang.dstvar);
    R_FREE (egg->lang.dstval);
    egg->lang.ndstval = 0;
    CTX = 0;
    return 1;
   }
  }
 }
 if (egg->lang.dstval) {
  egg->lang.dstval[egg->lang.ndstval++] = c;
 }
 return 0;
}
