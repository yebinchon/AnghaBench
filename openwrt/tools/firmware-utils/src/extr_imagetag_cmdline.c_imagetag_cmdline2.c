
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imagetag_cmdline_params {int override; int initialize; int check_required; int print_errors; scalar_t__ check_ambiguity; } ;
struct gengetopt_args_info {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int) ;
 int imagetag_cmdline_free (struct gengetopt_args_info*) ;
 int imagetag_cmdline_internal (int,char**,struct gengetopt_args_info*,struct imagetag_cmdline_params*,int ) ;

int
imagetag_cmdline2 (int argc, char **argv, struct gengetopt_args_info *args_info, int override, int initialize, int check_required)
{
  int result;
  struct imagetag_cmdline_params params;

  params.override = override;
  params.initialize = initialize;
  params.check_required = check_required;
  params.check_ambiguity = 0;
  params.print_errors = 1;

  result = imagetag_cmdline_internal (argc, argv, args_info, &params, 0);

  if (result == EXIT_FAILURE)
    {
      imagetag_cmdline_free (args_info);
      exit (EXIT_FAILURE);
    }

  return result;
}
