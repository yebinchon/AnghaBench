
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * children; scalar_t__ children_num; int state; void* contents; void* tag; } ;
typedef TYPE_1__ mpc_ast_t ;


 void* malloc (int) ;
 int mpc_state_new () ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

mpc_ast_t *mpc_ast_new(const char *tag, const char *contents) {

  mpc_ast_t *a = malloc(sizeof(mpc_ast_t));

  a->tag = malloc(strlen(tag) + 1);
  strcpy(a->tag, tag);

  a->contents = malloc(strlen(contents) + 1);
  strcpy(a->contents, contents);

  a->state = mpc_state_new();

  a->children_num = 0;
  a->children = ((void*)0);
  return a;

}
