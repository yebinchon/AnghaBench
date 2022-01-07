
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; } ;


 int SYMBOL_DEF_USER ;

__attribute__((used)) static inline bool sym_has_value(struct symbol *sym)
{
 return sym->flags & SYMBOL_DEF_USER ? 1 : 0;
}
