
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imagetag_cmdline_params {int dummy; } ;
struct gengetopt_args_info {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int) ;
 int imagetag_cmdline_free (struct gengetopt_args_info*) ;
 int imagetag_cmdline_internal (int,char**,struct gengetopt_args_info*,struct imagetag_cmdline_params*,int ) ;

int
imagetag_cmdline_ext (int argc, char **argv, struct gengetopt_args_info *args_info,
                   struct imagetag_cmdline_params *params)
{
  int result;
  result = imagetag_cmdline_internal (argc, argv, args_info, params, 0);

  if (result == EXIT_FAILURE)
    {
      imagetag_cmdline_free (args_info);
      exit (EXIT_FAILURE);
    }

  return result;
}
