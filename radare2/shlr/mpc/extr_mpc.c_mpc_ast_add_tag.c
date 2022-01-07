
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* tag; } ;
typedef TYPE_1__ mpc_ast_t ;


 int memmove (char const*,char const*,int) ;
 char const* realloc (char const*,int) ;
 int strlen (char const*) ;

mpc_ast_t *mpc_ast_add_tag(mpc_ast_t *a, const char *t) {
  if (!a) { return a; }
  a->tag = realloc(a->tag, strlen(t) + 1 + strlen(a->tag) + 1);
  memmove(a->tag + strlen(t) + 1, a->tag, strlen(a->tag)+1);
  memmove(a->tag, t, strlen(t));
  memmove(a->tag + strlen(t), "|", 1);
  return a;
}
