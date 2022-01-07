
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {scalar_t__ use_utf8; } ;
typedef TYPE_1__ RCons ;
typedef TYPE_2__ RANode ;
typedef int RAGraph ;


 int G (int ,int ) ;
 char* UTF_CIRCLE ;
 int W (char*) ;
 TYPE_1__* r_cons_singleton () ;

__attribute__((used)) static void tiny_RANode_print(const RAGraph *g, const RANode *n, int cur) {
 G (n->x, n->y);
 RCons *cons = r_cons_singleton ();
 char *circle = cons->use_utf8 ? UTF_CIRCLE :"()";
 if (cur) {
  W ("##");
 } else {
  W (circle);
 }
}
