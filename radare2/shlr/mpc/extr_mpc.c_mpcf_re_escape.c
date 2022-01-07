
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mpc_val_t ;
typedef char mpc_parser_t ;


 int free (char*) ;
 char* mpc_and (int,int ,int ,int ,int (*) (char*)) ;
 char* mpc_any () ;
 char* mpc_char (char) ;
 int mpc_eoi () ;
 int mpc_lift (int ) ;
 char* mpc_re_escape_char (char) ;
 int mpc_soi () ;
 int mpcf_ctor_str ;
 int mpcf_snd ;

__attribute__((used)) static mpc_val_t *mpcf_re_escape(mpc_val_t *x) {

  char *s = x;
  mpc_parser_t *p;


  if (s[0] == '.') { free(s); return mpc_any(); }
  if (s[0] == '^') { free(s); return mpc_and(2, mpcf_snd, mpc_soi(), mpc_lift(mpcf_ctor_str), free); }
  if (s[0] == '$') { free(s); return mpc_and(2, mpcf_snd, mpc_eoi(), mpc_lift(mpcf_ctor_str), free); }


  if (s[0] == '\\') {
    p = mpc_re_escape_char(s[1]);
    p = (!p) ? mpc_char(s[1]) : p;
    free(s);
    return p;
  }


  p = mpc_char(s[0]);
  free(s);
  return p;
}
