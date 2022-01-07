
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* f ) (char,char) ;} ;
struct TYPE_9__ {TYPE_1__ anchor; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_ANCHOR ;
 TYPE_3__* mpc_expect (TYPE_3__*,char*) ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_anchor(int(*f)(char,char)) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_ANCHOR;
  p->data.anchor.f = f;
  return mpc_expect(p, "anchor");
}
