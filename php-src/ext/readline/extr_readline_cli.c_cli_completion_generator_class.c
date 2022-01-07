
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;


 int EG (int ) ;
 int ZSTR_VAL (int ) ;
 int class_table ;
 char* cli_completion_generator_ht (char const*,size_t,int*,int ,void**) ;
 char rl_completion_append_character ;
 char* strdup (int ) ;

__attribute__((used)) static char *cli_completion_generator_class(const char *text, size_t textlen, int *state)
{
 zend_class_entry *ce;
 char *retval = cli_completion_generator_ht(text, textlen, state, EG(class_table), (void**)&ce);
 if (retval) {
  rl_completion_append_character = '\0';
  retval = strdup(ZSTR_VAL(ce->name));
 }

 return retval;
}
