
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
typedef TYPE_1__ mpc_ast_t ;


 int strcmp (int ,char*) ;

__attribute__((used)) static int isInlineAssembly(mpc_ast_t *node) {
 if (!strcmp (node->tag, "asm|regex")) {
  return 1;
 }
 return 0;
}
