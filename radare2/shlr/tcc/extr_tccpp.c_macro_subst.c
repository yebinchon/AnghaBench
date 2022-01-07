
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_level {int* p; struct macro_level* prev; } ;
typedef int TokenString ;
typedef int Sym ;
typedef int CValue ;


 int PARSE_FLAG_SPACES ;
 int TOK_GET (int*,int const**,int *) ;
 int TOK_NOSUBST ;
 int check_space (int,int*) ;
 int * define_find (int) ;
 int* macro_ptr ;
 int macro_subst_tok (int *,int **,int *,struct macro_level**) ;
 int* macro_twosharps (int const*) ;
 int parse_flags ;
 scalar_t__ sym_find2 (int *,int) ;
 scalar_t__ tcc_nerr () ;
 int tok ;
 int tok_str_add (int *,char) ;
 int tok_str_add2 (int *,int,int *) ;
 int tok_str_free (int*) ;

__attribute__((used)) static void macro_subst(TokenString *tok_str, Sym **nested_list,
   const int *macro_str, struct macro_level **can_read_stream)
{
 Sym *s;
 int *macro_str1;
 const int *ptr;
 int t, ret, spc;
 CValue cval;
 struct macro_level ml;
 int force_blank;


 ptr = macro_str;
 macro_str1 = macro_twosharps (ptr);

 if (macro_str1) {
  ptr = macro_str1;
 }
 spc = 0;
 force_blank = 0;

 while (tcc_nerr () == 0) {


  if (ptr == ((void*)0)) {
   break;
  }
  TOK_GET (&t, &ptr, &cval);
  if (t == 0) {
   break;
  }
  if (t == TOK_NOSUBST) {

   tok_str_add2 (tok_str, TOK_NOSUBST, ((void*)0));
   TOK_GET (&t, &ptr, &cval);
   goto no_subst;
  }
  s = define_find (t);
  if (s != ((void*)0)) {

   if (sym_find2 (*nested_list, t)) {

    tok_str_add2 (tok_str, TOK_NOSUBST, ((void*)0));
    goto no_subst;
   }
   ml.p = macro_ptr;
   if (can_read_stream) {
    ml.prev = *can_read_stream, *can_read_stream = &ml;
   }
   macro_ptr = (int *) ptr;
   tok = t;
   ret = macro_subst_tok (tok_str, nested_list, s, can_read_stream);
   ptr = (int *) macro_ptr;
   macro_ptr = ml.p;
   if (can_read_stream && *can_read_stream == &ml) {
    *can_read_stream = ml.prev;
   }
   if (ret != 0) {
    goto no_subst;
   }
   if (parse_flags & PARSE_FLAG_SPACES) {
    force_blank = 1;
   }
  } else {
no_subst:
   if (force_blank) {
    tok_str_add (tok_str, ' ');
    spc = 1;
    force_blank = 0;
   }
   if (!check_space (t, &spc)) {
    tok_str_add2 (tok_str, t, &cval);
   }
  }
 }
 if (macro_str1) {
  tok_str_free (macro_str1);
 }
}
