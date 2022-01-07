
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOK_IDENT ;
 int cstr_free (int *) ;
 int dynarray_reset (int *,int *) ;
 int free (int *****) ;
 int free_defines (int *) ;
 int * macro_ptr ;
 int nb_sym_pools ;
 int * sym_free_first ;
 int sym_pools ;
 int ***** table_ident ;
 int * tcc_state ;
 int tok_ident ;
 int tokcstr ;

__attribute__((used)) static void tcc_cleanup(void)
{
 int i, n;
 if (((void*)0) == tcc_state) {
  return;
 }
 tcc_state = ((void*)0);


 free_defines (((void*)0));


 n = tok_ident - TOK_IDENT;
 for (i = 0; i < n; i++) {
  free (table_ident[i]);
 }
 free (table_ident);


 dynarray_reset (&sym_pools, &nb_sym_pools);

 cstr_free (&tokcstr);

 sym_free_first = ((void*)0);

 macro_ptr = ((void*)0);
}
