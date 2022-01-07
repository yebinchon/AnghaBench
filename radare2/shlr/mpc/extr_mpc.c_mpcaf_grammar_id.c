
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mpca_grammar_st_t ;
typedef int mpc_val_t ;
struct TYPE_6__ {scalar_t__ name; } ;
typedef TYPE_1__ mpc_parser_t ;


 int free (int *) ;
 TYPE_1__* mpca_add_tag (TYPE_1__*,scalar_t__) ;
 TYPE_1__* mpca_grammar_find_parser (int *,int *) ;
 int mpca_root (TYPE_1__*) ;
 int * mpca_state (int ) ;

__attribute__((used)) static mpc_val_t *mpcaf_grammar_id(mpc_val_t *x, void *s) {

  mpca_grammar_st_t *st = s;
  mpc_parser_t *p = mpca_grammar_find_parser(x, st);
  free(x);

  if (p->name) {
    return mpca_state(mpca_root(mpca_add_tag(p, p->name)));
  } else {
    return mpca_state(mpca_root(p));
  }
}
