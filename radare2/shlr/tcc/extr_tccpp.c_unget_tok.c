
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tab; } ;


 int* macro_ptr ;
 int tok ;
 int tok_ext_size (int) ;
 TYPE_1__ tokc ;
 int unget_buffer_enabled ;
 int* unget_saved_buffer ;
 int* unget_saved_macro_ptr ;

void unget_tok(int last_tok)
{
 int i, n;
 int *q;
 if (unget_buffer_enabled) {


 } else {
  unget_saved_macro_ptr = macro_ptr;
  unget_buffer_enabled = 1;
 }
 q = unget_saved_buffer;
 macro_ptr = q;
 *q++ = tok;
 n = tok_ext_size (tok) - 1;
 for (i = 0; i < n; i++) {
  *q++ = tokc.tab[i];
 }
 *q = 0;
 tok = last_tok;
}
