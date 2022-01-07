
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int sym_set_tristate_value (struct symbol*,int ) ;
 int yes ;

__attribute__((used)) static inline bool sym_set_choice_value(struct symbol *ch, struct symbol *chval)
{
 return sym_set_tristate_value(chval, yes);
}
