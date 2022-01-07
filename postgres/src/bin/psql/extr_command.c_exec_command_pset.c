
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int quiet; int popt; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int do_pset (char*,char*,int *,int ) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int printf (char*,char const* const,char*) ;
 TYPE_1__ pset ;
 char* pset_value_string (char const* const,int *) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static backslashResult
exec_command_pset(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt0 = psql_scan_slash_option(scan_state,
              OT_NORMAL, ((void*)0), 0);
  char *opt1 = psql_scan_slash_option(scan_state,
              OT_NORMAL, ((void*)0), 0);

  if (!opt0)
  {


   int i;
   static const char *const my_list[] = {
    "border", "columns", "csv_fieldsep", "expanded", "fieldsep",
    "fieldsep_zero", "footer", "format", "linestyle", "null",
    "numericlocale", "pager", "pager_min_lines",
    "recordsep", "recordsep_zero",
    "tableattr", "title", "tuples_only",
    "unicode_border_linestyle",
    "unicode_column_linestyle",
    "unicode_header_linestyle",
    ((void*)0)
   };

   for (i = 0; my_list[i] != ((void*)0); i++)
   {
    char *val = pset_value_string(my_list[i], &pset.popt);

    printf("%-24s %s\n", my_list[i], val);
    free(val);
   }

   success = 1;
  }
  else
   success = do_pset(opt0, opt1, &pset.popt, pset.quiet);

  free(opt0);
  free(opt1);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
