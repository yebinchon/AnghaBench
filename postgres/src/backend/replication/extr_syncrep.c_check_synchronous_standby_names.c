
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_sync; int config_size; } ;
typedef int SyncRepConfigData ;
typedef int GucSource ;


 int ERRCODE_SYNTAX_ERROR ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errdetail (char*,...) ;
 int GUC_check_errmsg (char*,scalar_t__) ;
 scalar_t__ malloc (int ) ;
 int memcpy (int *,TYPE_1__*,int ) ;
 int * syncrep_parse_error_msg ;
 TYPE_1__* syncrep_parse_result ;
 int syncrep_scanner_finish () ;
 int syncrep_scanner_init (char*) ;
 int syncrep_yyparse () ;

bool
check_synchronous_standby_names(char **newval, void **extra, GucSource source)
{
 if (*newval != ((void*)0) && (*newval)[0] != '\0')
 {
  int parse_rc;
  SyncRepConfigData *pconf;


  syncrep_parse_result = ((void*)0);
  syncrep_parse_error_msg = ((void*)0);


  syncrep_scanner_init(*newval);
  parse_rc = syncrep_yyparse();
  syncrep_scanner_finish();

  if (parse_rc != 0 || syncrep_parse_result == ((void*)0))
  {
   GUC_check_errcode(ERRCODE_SYNTAX_ERROR);
   if (syncrep_parse_error_msg)
    GUC_check_errdetail("%s", syncrep_parse_error_msg);
   else
    GUC_check_errdetail("synchronous_standby_names parser failed");
   return 0;
  }

  if (syncrep_parse_result->num_sync <= 0)
  {
   GUC_check_errmsg("number of synchronous standbys (%d) must be greater than zero",
        syncrep_parse_result->num_sync);
   return 0;
  }


  pconf = (SyncRepConfigData *)
   malloc(syncrep_parse_result->config_size);
  if (pconf == ((void*)0))
   return 0;
  memcpy(pconf, syncrep_parse_result, syncrep_parse_result->config_size);

  *extra = (void *) pconf;
 }
 else
  *extra = ((void*)0);

 return 1;
}
