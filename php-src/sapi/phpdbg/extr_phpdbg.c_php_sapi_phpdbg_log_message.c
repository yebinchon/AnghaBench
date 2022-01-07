
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
 int PG (int ) ;

 int PHPDBG_G (int ) ;
 int PHPDBG_IN_EVAL ;
 int PHPDBG_IS_STOPPING ;


 int PHPDBG_PREVENT_INTERACTIVE ;

 int flags ;
 int fprintf (int ,char*,char*) ;
 int last_error_type ;
 scalar_t__ phpdbg_booted ;
 int phpdbg_error (char*,char*,char*,char*) ;
 int phpdbg_fully_started ;
 int phpdbg_interactive (int,int *) ;
 int phpdbg_list_file (int *,int,int ,int ) ;
 int stdout ;
 int strlen (char const*) ;
 char* zend_get_executed_filename () ;
 int zend_get_executed_lineno () ;
 int * zend_string_init (char const*,int ,int ) ;
 int zend_string_release (int *) ;

__attribute__((used)) static void php_sapi_phpdbg_log_message(char *message, int syslog_type_int)
{



 if (phpdbg_booted) {
  if (PHPDBG_G(flags) & PHPDBG_IN_EVAL) {
   phpdbg_error("eval", "msg=\"%s\"", "%s", message);
   return;
  }

  phpdbg_error("php", "msg=\"%s\"", "%s", message);

  if (PHPDBG_G(flags) & PHPDBG_PREVENT_INTERACTIVE) {
   return;
  }

  switch (PG(last_error_type)) {
   case 135:
   case 136:
   case 137:
   case 132:
   case 134:
   case 133: {
    const char *file_char = zend_get_executed_filename();
    zend_string *file = zend_string_init(file_char, strlen(file_char), 0);
    phpdbg_list_file(file, 3, zend_get_executed_lineno() - 1, zend_get_executed_lineno());
    zend_string_release(file);

    if (!phpdbg_fully_started) {
     return;
    }

    do {
     switch (phpdbg_interactive(1, ((void*)0))) {
      case 130:
      case 131:
      case 128:
      case 129:
       return;
     }
    } while (!(PHPDBG_G(flags) & PHPDBG_IS_STOPPING));
   }
  }
 } else {
  fprintf(stdout, "%s\n", message);
 }
}
