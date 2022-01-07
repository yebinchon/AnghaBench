
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x; } ;
struct TYPE_9__ {TYPE_1__ string; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_ONEOF ;
 int malloc (scalar_t__) ;
 TYPE_3__* mpc_expectf (TYPE_3__*,char*,char const*) ;
 TYPE_3__* mpc_undefined () ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

mpc_parser_t *mpc_oneof(const char *s) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_ONEOF;
  p->data.string.x = malloc(strlen(s) + 1);
  strcpy(p->data.string.x, s);
  return mpc_expectf(p, "one of '%s'", s);
}
