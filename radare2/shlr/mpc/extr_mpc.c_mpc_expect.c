
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int m; TYPE_3__* x; } ;
struct TYPE_8__ {TYPE_1__ expect; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_EXPECT ;
 int malloc (scalar_t__) ;
 TYPE_3__* mpc_undefined () ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

mpc_parser_t *mpc_expect(mpc_parser_t *a, const char *expected) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_EXPECT;
  p->data.expect.x = a;
  p->data.expect.m = malloc(strlen(expected) + 1);
  strcpy(p->data.expect.m, expected);
  return p;
}
