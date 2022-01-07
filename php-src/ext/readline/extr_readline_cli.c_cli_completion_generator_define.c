
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_class_entry ;
typedef int HashTable ;


 char* cli_completion_generator_ht (char const*,size_t,int*,int *,void**) ;
 char rl_completion_append_character ;
 char* strdup (char*) ;

__attribute__((used)) static char *cli_completion_generator_define(const char *text, size_t textlen, int *state, HashTable *ht)
{
 zend_class_entry **pce;
 char *retval = cli_completion_generator_ht(text, textlen, state, ht, (void**)&pce);
 if (retval) {
  rl_completion_append_character = '\0';
  retval = strdup(retval);
 }

 return retval;
}
