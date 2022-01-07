
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenSym ;


 int CH_EOF ;
 int TOK_HASH_SIZE ;
 int TOK_IDENT ;
 int hash_ident ;
 scalar_t__ isid (int) ;
 int* isidnum_table ;
 scalar_t__ isnum (int) ;
 int memset (int ,int ,int) ;
 int * table_ident ;
 char* tcc_keywords ;
 int tok_alloc (char const*,int) ;
 int tok_ident ;

void preprocess_new(void)
{
 int i, c;
 const char *p, *r;


 for (i = CH_EOF; i < 256; i++) {
  isidnum_table[i - CH_EOF] = isid (i) || isnum (i);
 }


 table_ident = ((void*)0);
 memset (hash_ident, 0, TOK_HASH_SIZE * sizeof(TokenSym *));

 tok_ident = TOK_IDENT;
 p = tcc_keywords;
 while (*p) {
  r = p;
  for (;;) {
   c = *r++;
   if (c == '\0') {
    break;
   }
  }
  tok_alloc (p, r - p - 1);
  p = r;
 }
}
