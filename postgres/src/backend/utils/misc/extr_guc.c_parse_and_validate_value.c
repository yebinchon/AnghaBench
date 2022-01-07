
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union config_var_val {int enumval; int * stringval; int realval; int intval; int boolval; } ;
struct TYPE_6__ {int flags; } ;
struct config_string {TYPE_3__ gen; } ;
struct TYPE_5__ {int flags; } ;
struct config_real {int max; int min; TYPE_2__ gen; } ;
struct TYPE_4__ {int flags; } ;
struct config_int {int max; int min; TYPE_1__ gen; } ;
struct config_generic {int vartype; } ;
struct config_enum {int dummy; } ;
struct config_bool {int dummy; } ;
typedef int GucSource ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int GUC_IS_NAME ;





 int _ (char const*) ;
 int call_bool_check_hook (struct config_bool*,int *,void**,int ,int) ;
 int call_enum_check_hook (struct config_enum*,int *,void**,int ,int) ;
 int call_int_check_hook (struct config_int*,int *,void**,int ,int) ;
 int call_real_check_hook (struct config_real*,int *,void**,int ,int) ;
 int call_string_check_hook (struct config_string*,int **,void**,int ,int) ;
 char* config_enum_get_options (struct config_enum*,char*,char*,char*) ;
 int config_enum_lookup_by_name (struct config_enum*,char const*,int *) ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,char const*,...) ;
 int free (int *) ;
 char* get_config_unit_name (int ) ;
 int * guc_strdup (int,char const*) ;
 int parse_bool (char const*,int *) ;
 int parse_int (char const*,int *,int ,char const**) ;
 int parse_real (char const*,int *,int ,char const**) ;
 int pfree (char*) ;
 int strlen (int *) ;
 int truncate_identifier (int *,int ,int) ;

__attribute__((used)) static bool
parse_and_validate_value(struct config_generic *record,
       const char *name, const char *value,
       GucSource source, int elevel,
       union config_var_val *newval, void **newextra)
{
 switch (record->vartype)
 {
  case 132:
   {
    struct config_bool *conf = (struct config_bool *) record;

    if (!parse_bool(value, &newval->boolval))
    {
     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("parameter \"%s\" requires a Boolean value",
         name)));
     return 0;
    }

    if (!call_bool_check_hook(conf, &newval->boolval, newextra,
            source, elevel))
     return 0;
   }
   break;
  case 130:
   {
    struct config_int *conf = (struct config_int *) record;
    const char *hintmsg;

    if (!parse_int(value, &newval->intval,
          conf->gen.flags, &hintmsg))
    {
     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for parameter \"%s\": \"%s\"",
         name, value),
        hintmsg ? errhint("%s", _(hintmsg)) : 0));
     return 0;
    }

    if (newval->intval < conf->min || newval->intval > conf->max)
    {
     const char *unit = get_config_unit_name(conf->gen.flags);

     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("%d%s%s is outside the valid range for parameter \"%s\" (%d .. %d)",
         newval->intval,
         unit ? " " : "",
         unit ? unit : "",
         name,
         conf->min, conf->max)));
     return 0;
    }

    if (!call_int_check_hook(conf, &newval->intval, newextra,
           source, elevel))
     return 0;
   }
   break;
  case 129:
   {
    struct config_real *conf = (struct config_real *) record;
    const char *hintmsg;

    if (!parse_real(value, &newval->realval,
        conf->gen.flags, &hintmsg))
    {
     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for parameter \"%s\": \"%s\"",
         name, value),
        hintmsg ? errhint("%s", _(hintmsg)) : 0));
     return 0;
    }

    if (newval->realval < conf->min || newval->realval > conf->max)
    {
     const char *unit = get_config_unit_name(conf->gen.flags);

     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("%g%s%s is outside the valid range for parameter \"%s\" (%g .. %g)",
         newval->realval,
         unit ? " " : "",
         unit ? unit : "",
         name,
         conf->min, conf->max)));
     return 0;
    }

    if (!call_real_check_hook(conf, &newval->realval, newextra,
            source, elevel))
     return 0;
   }
   break;
  case 128:
   {
    struct config_string *conf = (struct config_string *) record;





    newval->stringval = guc_strdup(elevel, value);
    if (newval->stringval == ((void*)0))
     return 0;





    if (conf->gen.flags & GUC_IS_NAME)
     truncate_identifier(newval->stringval,
          strlen(newval->stringval),
          1);

    if (!call_string_check_hook(conf, &newval->stringval, newextra,
           source, elevel))
    {
     free(newval->stringval);
     newval->stringval = ((void*)0);
     return 0;
    }
   }
   break;
  case 131:
   {
    struct config_enum *conf = (struct config_enum *) record;

    if (!config_enum_lookup_by_name(conf, value, &newval->enumval))
    {
     char *hintmsg;

     hintmsg = config_enum_get_options(conf,
               "Available values: ",
               ".", ", ");

     ereport(elevel,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for parameter \"%s\": \"%s\"",
         name, value),
        hintmsg ? errhint("%s", _(hintmsg)) : 0));

     if (hintmsg)
      pfree(hintmsg);
     return 0;
    }

    if (!call_enum_check_hook(conf, &newval->enumval, newextra,
            source, elevel))
     return 0;
   }
   break;
 }

 return 1;
}
