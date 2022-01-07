
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function_name; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
typedef int HashTable ;


 int ZSTR_VAL (int ) ;
 char* cli_completion_generator_ht (char const*,size_t,int*,int *,void**) ;
 char rl_completion_append_character ;
 char* strdup (int ) ;

__attribute__((used)) static char *cli_completion_generator_func(const char *text, size_t textlen, int *state, HashTable *ht)
{
 zend_function *func;
 char *retval = cli_completion_generator_ht(text, textlen, state, ht, (void**)&func);
 if (retval) {
  rl_completion_append_character = '(';
  retval = strdup(ZSTR_VAL(func->common.function_name));
 }

 return retval;
}
