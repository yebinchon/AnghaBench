
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gengetopt_args_info_description ;
 char* gengetopt_args_info_purpose ;
 char* gengetopt_args_info_usage ;
 int imagetag_cmdline_print_version () ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void print_help_common(void) {
  imagetag_cmdline_print_version ();

  if (strlen(gengetopt_args_info_purpose) > 0)
    printf("\n%s\n", gengetopt_args_info_purpose);

  if (strlen(gengetopt_args_info_usage) > 0)
    printf("\n%s\n", gengetopt_args_info_usage);

  printf("\n");

  if (strlen(gengetopt_args_info_description) > 0)
    printf("%s\n\n", gengetopt_args_info_description);
}
