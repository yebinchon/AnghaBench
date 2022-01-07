
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * str; } ;
typedef TYPE_1__ TokenString ;
struct TYPE_7__ {int i; } ;


 int TOK_CINT ;
 int TOK_DEFINED ;
 int TOK_EOF ;
 int TOK_IDENT ;
 int TOK_LINEFEED ;
 scalar_t__ define_find (int) ;
 int expr_const () ;
 int * macro_ptr ;
 int next () ;
 int next_nomacro () ;
 int tok ;
 int tok_str_add (TYPE_1__*,int) ;
 int tok_str_add_tok (TYPE_1__*) ;
 int tok_str_free (int *) ;
 int tok_str_new (TYPE_1__*) ;
 TYPE_2__ tokc ;

__attribute__((used)) static int expr_preprocess(void)
{
 int c, t;
 TokenString str;

 tok_str_new (&str);
 while (tok != TOK_LINEFEED && tok != TOK_EOF) {
  next ();
  if (tok == TOK_DEFINED) {
   next_nomacro ();
   t = tok;
   if (t == '(') {
    next_nomacro ();
   }
   c = define_find (tok) != 0;
   if (t == '(') {
    next_nomacro ();
   }
   tok = TOK_CINT;
   tokc.i = c;
  } else if (tok >= TOK_IDENT) {

   tok = TOK_CINT;
   tokc.i = 0;
  }
  tok_str_add_tok (&str);
 }
 tok_str_add (&str, -1);
 tok_str_add (&str, 0);

 macro_ptr = str.str;
 next ();
 c = expr_const ();
 macro_ptr = ((void*)0);
 tok_str_free (str.str);
 return c != 0;
}
