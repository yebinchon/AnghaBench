
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; scalar_t__ key; } ;
typedef TYPE_1__ phpdbg_help_text_t ;


 TYPE_1__* phpdbg_help_text ;
 int strcmp (scalar_t__,char const* const) ;

__attribute__((used)) static char *get_help(const char * const key)
{
 phpdbg_help_text_t *p;





 for (p = phpdbg_help_text; p->key; p++) {
  if (!strcmp(p->key, key)) {
   return p->text;
  }
 }
 return "";
}
