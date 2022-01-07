
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* fini ) (int *) ;} ;
typedef TYPE_1__ RAsmPlugin ;


 int stub1 (int *) ;

__attribute__((used)) static void plugin_free(RAsmPlugin *p) {
 if (p && p->fini) {
  p->fini (((void*)0));
 }
}
