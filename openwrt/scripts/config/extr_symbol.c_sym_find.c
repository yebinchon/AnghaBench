
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; scalar_t__ name; struct symbol* next; } ;


 int SYMBOL_CONST ;
 int SYMBOL_HASHSIZE ;
 int strcmp (scalar_t__,char const*) ;
 int strhash (char const*) ;
 struct symbol** symbol_hash ;
 struct symbol symbol_mod ;
 struct symbol symbol_no ;
 struct symbol symbol_yes ;

struct symbol *sym_find(const char *name)
{
 struct symbol *symbol = ((void*)0);
 int hash = 0;

 if (!name)
  return ((void*)0);

 if (name[0] && !name[1]) {
  switch (name[0]) {
  case 'y': return &symbol_yes;
  case 'm': return &symbol_mod;
  case 'n': return &symbol_no;
  }
 }
 hash = strhash(name) % SYMBOL_HASHSIZE;

 for (symbol = symbol_hash[hash]; symbol; symbol = symbol->next) {
  if (symbol->name &&
      !strcmp(symbol->name, name) &&
      !(symbol->flags & SYMBOL_CONST))
    break;
 }

 return symbol;
}
