
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ mpca_grammar_st_t ;
typedef int mpc_val_t ;
typedef int mpc_parser_t ;


 int MPCA_LANG_WHITESPACE_SENSITIVE ;
 int free (char*) ;
 int mpc_apply (int *,int ) ;
 int * mpc_re (char*) ;
 int * mpc_tok (int *) ;
 int * mpca_state (int ) ;
 int mpca_tag (int ,char*) ;
 int mpcf_str_ast ;
 char* mpcf_unescape_regex (int *) ;

__attribute__((used)) static mpc_val_t *mpcaf_grammar_regex(mpc_val_t *x, void *s) {
  mpca_grammar_st_t *st = s;
  char *y = mpcf_unescape_regex(x);
  mpc_parser_t *p = (st->flags & MPCA_LANG_WHITESPACE_SENSITIVE) ? mpc_re(y) : mpc_tok(mpc_re(y));
  free(y);
  return mpca_state(mpca_tag(mpc_apply(p, mpcf_str_ast), "regex"));
}
