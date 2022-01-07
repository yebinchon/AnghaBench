
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag; } ;
typedef TYPE_1__ mpc_ast_t ;


 int realloc (int ,scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

mpc_ast_t *mpc_ast_tag(mpc_ast_t *a, const char *t) {
  a->tag = realloc(a->tag, strlen(t) + 1);
  strcpy(a->tag, t);
  return a;
}
