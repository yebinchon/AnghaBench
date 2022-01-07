
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_3__ {int * name; int constants_table; int function_table; } ;
typedef TYPE_1__ zend_class_entry ;


 int * EG (int ) ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 char* cli_completion_generator_class (char*,size_t,int*) ;
 char* cli_completion_generator_define (char const*,size_t,int*,int *) ;
 char* cli_completion_generator_func (char*,size_t,int*,int *) ;
 char* cli_completion_generator_ini (char const*,size_t,int*) ;
 char* cli_completion_generator_var (char const*,size_t,int*) ;
 int cli_completion_state ;
 int efree (char*) ;
 int free (char*) ;
 int function_table ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int zend_constants ;
 TYPE_1__* zend_lookup_class (int *) ;
 int zend_str_tolower_copy (char*,char const*,size_t) ;
 char* zend_str_tolower_dup (char const*,size_t) ;
 int * zend_string_alloc (size_t,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static char *cli_completion_generator(const char *text, int index)
{
 char *retval = ((void*)0);
 size_t textlen = strlen(text);

 if (!index) {
  cli_completion_state = 0;
 }
 if (text[0] == '$') {
  retval = cli_completion_generator_var(text, textlen, &cli_completion_state);
 } else if (text[0] == '#') {
  retval = cli_completion_generator_ini(text, textlen, &cli_completion_state);
 } else {
  char *lc_text, *class_name_end;
  zend_string *class_name = ((void*)0);
  zend_class_entry *ce = ((void*)0);

  class_name_end = strstr(text, "::");
  if (class_name_end) {
   size_t class_name_len = class_name_end - text;
   class_name = zend_string_alloc(class_name_len, 0);
   zend_str_tolower_copy(ZSTR_VAL(class_name), text, class_name_len);
   if ((ce = zend_lookup_class(class_name)) == ((void*)0)) {
    zend_string_release_ex(class_name, 0);
    return ((void*)0);
   }
   lc_text = zend_str_tolower_dup(class_name_end + 2, textlen - 2 - class_name_len);
   textlen -= (class_name_len + 2);
  } else {
   lc_text = zend_str_tolower_dup(text, textlen);
  }

  switch (cli_completion_state) {
   case 0:
   case 1:
    retval = cli_completion_generator_func(lc_text, textlen, &cli_completion_state, ce ? &ce->function_table : EG(function_table));
    if (retval) {
     break;
    }
   case 2:
   case 3:
    retval = cli_completion_generator_define(text, textlen, &cli_completion_state, ce ? &ce->constants_table : EG(zend_constants));
    if (retval || ce) {
     break;
    }
   case 4:
   case 5:
    retval = cli_completion_generator_class(lc_text, textlen, &cli_completion_state);
    break;
   default:
    break;
  }
  efree(lc_text);
  if (class_name) {
   zend_string_release_ex(class_name, 0);
  }
  if (ce && retval) {
   size_t len = ZSTR_LEN(ce->name) + 2 + strlen(retval) + 1;
   char *tmp = malloc(len);

   snprintf(tmp, len, "%s::%s", ZSTR_VAL(ce->name), retval);
   free(retval);
   retval = tmp;
  }
 }

 return retval;
}
