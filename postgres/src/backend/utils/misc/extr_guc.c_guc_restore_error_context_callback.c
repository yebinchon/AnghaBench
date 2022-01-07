
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,char*,char*) ;

__attribute__((used)) static void
guc_restore_error_context_callback(void *arg)
{
 char **error_context_name_and_value = (char **) arg;

 if (error_context_name_and_value)
  errcontext("while setting parameter \"%s\" to \"%s\"",
       error_context_name_and_value[0],
       error_context_name_and_value[1]);
}
