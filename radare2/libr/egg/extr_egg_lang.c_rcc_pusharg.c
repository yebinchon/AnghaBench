
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nargs; int varxs; scalar_t__ pushargs; int * ctxpush; } ;
struct TYPE_9__ {TYPE_1__ lang; TYPE_2__* remit; } ;
struct TYPE_8__ {int (* push_arg ) (TYPE_3__*,int ,int ,char*) ;} ;
typedef TYPE_2__ REggEmit ;
typedef TYPE_3__ REgg ;


 size_t CTX ;
 int R_FREE (int ) ;
 int free (char*) ;
 char* r_egg_mkvar (TYPE_3__*,char*,char*,int ) ;
 int strdup (char*) ;
 int stub1 (TYPE_3__*,int ,int ,char*) ;

__attribute__((used)) static void rcc_pusharg(REgg *egg, char *str) {
 REggEmit *e = egg->remit;
 char buf[64], *p = r_egg_mkvar (egg, buf, str, 0);
 if (!p) {
  return;
 }
 R_FREE (egg->lang.ctxpush[CTX]);
 egg->lang.ctxpush[CTX] = strdup (p);
 egg->lang.nargs++;
 if (egg->lang.pushargs) {
  e->push_arg (egg, egg->lang.varxs, egg->lang.nargs, p);
 }

 free (p);
}
