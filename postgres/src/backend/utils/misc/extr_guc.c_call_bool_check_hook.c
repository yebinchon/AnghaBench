
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct config_bool {TYPE_1__ gen; int (* check_hook ) (int*,void**,int ) ;} ;
typedef int GucSource ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int FlushErrorState () ;
 int GUC_check_errcode_value ;
 int * GUC_check_errdetail_string ;
 int * GUC_check_errhint_string ;
 int * GUC_check_errmsg_string ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,int *) ;
 int errhint (char*,int *) ;
 int errmsg (char*,int ,int) ;
 int errmsg_internal (char*,int *) ;
 int stub1 (int*,void**,int ) ;

__attribute__((used)) static bool
call_bool_check_hook(struct config_bool *conf, bool *newval, void **extra,
      GucSource source, int elevel)
{

 if (!conf->check_hook)
  return 1;


 GUC_check_errcode_value = ERRCODE_INVALID_PARAMETER_VALUE;
 GUC_check_errmsg_string = ((void*)0);
 GUC_check_errdetail_string = ((void*)0);
 GUC_check_errhint_string = ((void*)0);

 if (!conf->check_hook(newval, extra, source))
 {
  ereport(elevel,
    (errcode(GUC_check_errcode_value),
     GUC_check_errmsg_string ?
     errmsg_internal("%s", GUC_check_errmsg_string) :
     errmsg("invalid value for parameter \"%s\": %d",
      conf->gen.name, (int) *newval),
     GUC_check_errdetail_string ?
     errdetail_internal("%s", GUC_check_errdetail_string) : 0,
     GUC_check_errhint_string ?
     errhint("%s", GUC_check_errhint_string) : 0));

  FlushErrorState();
  return 0;
 }

 return 1;
}
