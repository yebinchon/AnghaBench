
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; char* str; int * hash_next; int * sym_identifier; int * sym_struct; int * sym_label; int * sym_define; scalar_t__ tok; } ;
typedef TYPE_1__ TokenSym ;


 scalar_t__ SYM_FIRST_ANOM ;
 int TOK_ALLOC_INCR ;
 scalar_t__ TOK_IDENT ;
 TYPE_1__* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 TYPE_1__** realloc (TYPE_1__**,int) ;
 TYPE_1__** table_ident ;
 int tcc_error (char*) ;
 scalar_t__ tok_ident ;

__attribute__((used)) static TokenSym *tok_alloc_new(TokenSym **pts, const char *str, int len)
{
 TokenSym *ts, **ptable;
 int i;

 if (tok_ident >= SYM_FIRST_ANOM) {
  tcc_error ("memory full");
 }


 i = tok_ident - TOK_IDENT;
 if ((i % TOK_ALLOC_INCR) == 0) {
  ptable = realloc (table_ident, (i + TOK_ALLOC_INCR) * sizeof(TokenSym *));
  table_ident = ptable;
 }
 ts = malloc (sizeof(TokenSym) + len);
 table_ident[i] = ts;
 ts->tok = tok_ident++;
 ts->sym_define = ((void*)0);
 ts->sym_label = ((void*)0);
 ts->sym_struct = ((void*)0);
 ts->sym_identifier = ((void*)0);
 ts->len = len;
 ts->hash_next = ((void*)0);
 memcpy (ts->str, str, len);
 ts->str[len] = '\0';
 *pts = ts;
 return ts;
}
