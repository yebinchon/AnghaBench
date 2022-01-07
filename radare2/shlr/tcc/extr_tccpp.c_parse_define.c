
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int str; int len; } ;
typedef TYPE_1__ TokenString ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ Sym ;


 int MACRO_FUNC ;
 int MACRO_OBJ ;
 int SYM_FIELD ;
 int TOK_DOTS ;
 char TOK_EOF ;
 int TOK_IDENT ;
 char TOK_LINEFEED ;
 char TOK_TWOSHARPS ;
 int TOK___VA_ARGS__ ;
 scalar_t__ check_space (char,int*) ;
 int define_push (int,int,int ,TYPE_2__*) ;
 int define_stack ;
 char* get_tok_str (int,int *) ;
 scalar_t__ gnu_ext ;
 int next_nomacro () ;
 int next_nomacro_spc () ;
 int printf (char*,char*,int) ;
 TYPE_2__* sym_push2 (int *,int,int,int ) ;
 int tcc_error (char*,...) ;
 char tok ;
 int tok_print (int ) ;
 int tok_str_add (TYPE_1__*,int ) ;
 int tok_str_add2 (TYPE_1__*,char,int *) ;
 int tok_str_new (TYPE_1__*) ;
 int tokc ;

void parse_define(void)
{
 Sym *s, *first, **ps;
 int v, t, varg, is_vaargs, spc;
 TokenString str;

 v = tok;
 if (v < TOK_IDENT) {
  tcc_error ("invalid macro name '%s'", get_tok_str (tok, &tokc));
 }

 first = ((void*)0);
 t = MACRO_OBJ;

 next_nomacro_spc ();
 if (tok == '(') {
  next_nomacro ();
  ps = &first;
  while (tok != ')') {
   varg = tok;
   next_nomacro ();
   is_vaargs = 0;
   if (varg == TOK_DOTS) {
    varg = TOK___VA_ARGS__;
    is_vaargs = 1;
   } else if (tok == TOK_DOTS && gnu_ext) {
    is_vaargs = 1;
    next_nomacro ();
   }
   if (varg < TOK_IDENT) {
    tcc_error ("badly punctuated parameter list");
   }
   s = sym_push2 (&define_stack, varg | SYM_FIELD, is_vaargs, 0);
   if (!s) {
    return;
   }
   *ps = s;
   ps = &s->next;
   if (tok != ',') {
    break;
   }
   next_nomacro ();
  }
  if (tok == ')') {
   next_nomacro_spc ();
  }
  t = MACRO_FUNC;
 }
 tok_str_new (&str);
 spc = 2;

 while (tok != TOK_LINEFEED && tok != TOK_EOF) {

  if (TOK_TWOSHARPS == tok) {
   if (1 == spc) {
    --str.len;
   }
   spc = 2;
  } else if ('#' == tok) {
   spc = 2;
  } else if (check_space (tok, &spc)) {
   goto skip;
  }
  tok_str_add2 (&str, tok, &tokc);
skip:
  next_nomacro_spc ();
 }
 if (spc == 1) {
  --str.len;
 }
 tok_str_add (&str, 0);




 define_push (v, t, str.str, first);
}
