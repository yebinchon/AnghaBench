
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int dummy; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int exit (int) ;
 int imagetag_cmdline_free (struct gengetopt_args_info*) ;
 scalar_t__ imagetag_cmdline_required2 (struct gengetopt_args_info*,char const*,int ) ;

int
imagetag_cmdline_required (struct gengetopt_args_info *args_info, const char *prog_name)
{
  int result = EXIT_SUCCESS;

  if (imagetag_cmdline_required2(args_info, prog_name, 0) > 0)
    result = EXIT_FAILURE;

  if (result == EXIT_FAILURE)
    {
      imagetag_cmdline_free (args_info);
      exit (EXIT_FAILURE);
    }

  return result;
}
