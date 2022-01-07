
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char x; } ;
struct TYPE_9__ {TYPE_1__ single; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_SINGLE ;
 TYPE_3__* mpc_expectf (TYPE_3__*,char*,char) ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_char(char c) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_SINGLE;
  p->data.single.x = c;
  return mpc_expectf(p, "'%c'", c);
}
