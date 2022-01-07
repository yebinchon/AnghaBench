
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_parser {int error_list; } ;


 int LOG_WARNING ;
 int bfree (char*) ;
 int blog (int ,char*,char const*,char*) ;
 char* error_data_buildstring (int *) ;

__attribute__((used)) static void print_errors(struct cf_parser *cfp, const char *decl_string)
{
 char *errors = error_data_buildstring(&cfp->error_list);

 if (errors) {
  blog(LOG_WARNING, "Errors/warnings for '%s':\n\n%s",
       decl_string, errors);

  bfree(errors);
 }
}
