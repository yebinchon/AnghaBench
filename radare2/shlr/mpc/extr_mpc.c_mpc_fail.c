
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int m; } ;
struct TYPE_7__ {TYPE_1__ fail; } ;
struct TYPE_8__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_FAIL ;
 int malloc (scalar_t__) ;
 TYPE_3__* mpc_undefined () ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

mpc_parser_t *mpc_fail(const char *m) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_FAIL;
  p->data.fail.m = malloc(strlen(m) + 1);
  strcpy(p->data.fail.m, m);
  return p;
}
