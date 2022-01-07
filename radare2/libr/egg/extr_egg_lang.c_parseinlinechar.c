
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inlinectr; char* dstvar; char* dstval; char* syscallbody; size_t ndstval; size_t ninlines; TYPE_1__* inlines; int mode; scalar_t__ slurp; } ;
struct TYPE_8__ {TYPE_2__ lang; } ;
struct TYPE_6__ {void* body; void* name; } ;
typedef TYPE_3__ REgg ;


 int CTX ;
 int NORMAL ;
 int R_FREE (char*) ;
 int eprintf (char*) ;
 int rcc_context (TYPE_3__*,int) ;
 int skipspaces (char*) ;
 void* strdup (int ) ;

__attribute__((used)) static int parseinlinechar(REgg *egg, char c) {

 if (c == '{') {
  rcc_context (egg, 1);
  egg->lang.inlinectr++;
  if (egg->lang.inlinectr == 1) {
   return 0;
  }
 } else if (egg->lang.inlinectr == 0) {
  return 0;
 }


 if (c == '}') {
  if (CTX < 2) {
   rcc_context (egg, -1);
   egg->lang.slurp = 0;
   egg->lang.mode = NORMAL;
   egg->lang.inlinectr = 0;
   if (!egg->lang.dstvar && egg->lang.dstval == egg->lang.syscallbody) {
    egg->lang.dstval = ((void*)0);
    return 1;
   } else
   if (egg->lang.dstval && egg->lang.dstvar) {
    egg->lang.dstval[egg->lang.ndstval] = '\0';

    egg->lang.inlines[egg->lang.ninlines].name = strdup (skipspaces (egg->lang.dstvar));
    egg->lang.inlines[egg->lang.ninlines].body = strdup (skipspaces (egg->lang.dstval));
    egg->lang.ninlines++;
    R_FREE (egg->lang.dstvar);
    R_FREE (egg->lang.dstval);
    return 1;
   }
   eprintf ("Parse error\n");
  }
 }
 if (egg->lang.dstval) {
  egg->lang.dstval[egg->lang.ndstval++] = c;
  egg->lang.dstval[egg->lang.ndstval] = 0;
 }
 return 0;
}
