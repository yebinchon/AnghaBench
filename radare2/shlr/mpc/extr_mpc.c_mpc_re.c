
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * output; int error; } ;
typedef TYPE_1__ mpc_result_t ;
typedef int mpc_parser_t ;
typedef int (* mpc_dtor_t ) (char*) ;


 int free (char*) ;
 int * mpc_and (int,int ,int *,int *,int (*) (char*)) ;
 int * mpc_apply (int *,int ) ;
 int mpc_brackets (int ,int (*) (char*)) ;
 int * mpc_char (char) ;
 int mpc_cleanup (int,int *,int *,int *,int *,int *,int *) ;
 int mpc_define (int *,int *) ;
 scalar_t__ mpc_delete ;
 int mpc_err_delete (int ) ;
 char* mpc_err_string (int ) ;
 int * mpc_escape () ;
 int * mpc_failf (char*,char*) ;
 int mpc_int () ;
 int * mpc_many (int ,int *) ;
 int * mpc_maybe (int *) ;
 int * mpc_new (char*) ;
 int * mpc_noneof (char*) ;
 int mpc_optimise (int *) ;
 int * mpc_or (int,int *,int *,...) ;
 int mpc_parens (int *,int (*) (char*)) ;
 int mpc_parse (char*,char const*,int *,TYPE_1__*) ;
 int mpc_pass () ;
 int mpc_predictive (int *) ;
 int mpc_squares (int *,int (*) (char*)) ;
 int * mpc_whole (int ,int (*) (char*)) ;
 int mpcf_re_and ;
 int mpcf_re_escape ;
 int mpcf_re_or ;
 int mpcf_re_range ;
 int mpcf_re_repeat ;
 int mpcf_snd_free ;
 int mpcf_strfold ;

mpc_parser_t *mpc_re(const char *re) {

  char *err_msg;
  mpc_parser_t *err_out;
  mpc_result_t r;
  mpc_parser_t *Regex, *Term, *Factor, *Base, *Range, *RegexEnclose;

  Regex = mpc_new("regex");
  Term = mpc_new("term");
  Factor = mpc_new("factor");
  Base = mpc_new("base");
  Range = mpc_new("range");

  mpc_define(Regex, mpc_and(2, mpcf_re_or,
    Term,
    mpc_maybe(mpc_and(2, mpcf_snd_free, mpc_char('|'), Regex, free)),
    (mpc_dtor_t)mpc_delete
  ));

  mpc_define(Term, mpc_many(mpcf_re_and, Factor));

  mpc_define(Factor, mpc_and(2, mpcf_re_repeat,
    Base,
    mpc_or(5,
      mpc_char('*'), mpc_char('+'), mpc_char('?'),
      mpc_brackets(mpc_int(), free),
      mpc_pass()),
    (mpc_dtor_t)mpc_delete
  ));

  mpc_define(Base, mpc_or(4,
    mpc_parens(Regex, (mpc_dtor_t)mpc_delete),
    mpc_squares(Range, (mpc_dtor_t)mpc_delete),
    mpc_apply(mpc_escape(), mpcf_re_escape),
    mpc_apply(mpc_noneof(")|"), mpcf_re_escape)
  ));

  mpc_define(Range, mpc_apply(
    mpc_many(mpcf_strfold, mpc_or(2, mpc_escape(), mpc_noneof("]"))),
    mpcf_re_range
  ));

  RegexEnclose = mpc_whole(mpc_predictive(Regex), (mpc_dtor_t)mpc_delete);

  mpc_optimise(RegexEnclose);
  mpc_optimise(Regex);
  mpc_optimise(Term);
  mpc_optimise(Factor);
  mpc_optimise(Base);
  mpc_optimise(Range);

  if(!mpc_parse("<mpc_re_compiler>", re, RegexEnclose, &r)) {
    err_msg = mpc_err_string(r.error);
    err_out = mpc_failf("Invalid Regex: %s", err_msg);
    mpc_err_delete(r.error);
    free(err_msg);
    r.output = err_out;
  }

  mpc_cleanup(6, RegexEnclose, Regex, Term, Factor, Base, Range);

  mpc_optimise(r.output);

  return r.output;

}
