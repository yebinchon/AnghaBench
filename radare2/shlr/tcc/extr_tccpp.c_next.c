
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct macro_level {int dummy; } ;
struct TYPE_8__ {int * str; } ;
typedef TYPE_2__ TokenString ;
struct TYPE_9__ {TYPE_1__* cstr; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef int Sym ;


 int PARSE_FLAG_PREPROCESS ;
 int PARSE_FLAG_SPACES ;
 int PARSE_FLAG_TOK_NUM ;
 scalar_t__ TOK_IDENT ;
 scalar_t__ TOK_NOSUBST ;
 scalar_t__ TOK_PPNUM ;
 int * define_find (scalar_t__) ;
 int * macro_ptr ;
 int * macro_ptr_allocated ;
 scalar_t__ macro_subst_tok (TYPE_2__*,int **,int *,struct macro_level**) ;
 int next_nomacro () ;
 int next_nomacro_spc () ;
 int parse_flags ;
 int parse_number (char*) ;
 scalar_t__ tok ;
 int tok_str_add (TYPE_2__*,int ) ;
 int tok_str_free (int *) ;
 int tok_str_new (TYPE_2__*) ;
 TYPE_3__ tokc ;
 scalar_t__ unget_buffer_enabled ;
 int * unget_saved_macro_ptr ;

void next(void)
{
 Sym *nested_list, *s;
 TokenString str;
 struct macro_level *ml;

redo:
 if (parse_flags & PARSE_FLAG_SPACES) {
  next_nomacro_spc ();
 } else {
  next_nomacro ();
 }
 if (!macro_ptr) {


  if (tok >= TOK_IDENT &&
      (parse_flags & PARSE_FLAG_PREPROCESS)) {
   s = define_find (tok);
   if (s) {

    tok_str_new (&str);
    nested_list = ((void*)0);
    ml = ((void*)0);
    if (macro_subst_tok (&str, &nested_list, s, &ml) == 0) {

     tok_str_add (&str, 0);
     macro_ptr = str.str;
     macro_ptr_allocated = str.str;
     goto redo;
    }
   }
  }
 } else {
  if (tok == 0) {

   if (unget_buffer_enabled) {
    macro_ptr = unget_saved_macro_ptr;
    unget_buffer_enabled = 0;
   } else {

    tok_str_free (macro_ptr_allocated);
    macro_ptr_allocated = ((void*)0);
    macro_ptr = ((void*)0);
   }
   goto redo;
  } else if (tok == TOK_NOSUBST) {

   goto redo;
  }
 }


 if (tok == TOK_PPNUM &&
     (parse_flags & PARSE_FLAG_TOK_NUM)) {
  parse_number ((char *) tokc.cstr->data);
 }
}
