
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sym_identifier; } ;
typedef int Sym ;


 scalar_t__ TOK_IDENT ;
 TYPE_1__** table_ident ;
 scalar_t__ tok_ident ;

Sym *sym_find(int v) {
 v -= TOK_IDENT;
 if ((unsigned) v >= (unsigned) (tok_ident - TOK_IDENT)) {
  return ((void*)0);
 }
 return table_ident[v]->sym_identifier;
}
