
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {char* boot_val; char* reset_val; } ;
struct config_real {int min; int max; int boot_val; int reset_val; } ;
struct config_int {int min; int max; int boot_val; int reset_val; } ;
struct config_generic {int flags; char* name; size_t group; size_t context; size_t vartype; size_t source; char* sourcefile; int sourceline; int status; int long_desc; int short_desc; } ;
struct config_enum {int reset_val; int boot_val; } ;
struct config_bool {int reset_val; int boot_val; } ;
typedef int buffer ;


 int Assert (int) ;
 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 int GUC_NO_SHOW_ALL ;
 int GUC_PENDING_RESTART ;
 int GUC_SUPERUSER_ONLY ;
 int GetUserId () ;
 char** GucContext_Names ;
 char** GucSource_Names ;





 size_t PGC_S_FILE ;
 char* _ (int ) ;
 char* _ShowOption (struct config_generic*,int) ;
 char* config_enum_get_options (struct config_enum*,char*,char*,char*) ;
 char* config_enum_lookup_by_value (struct config_enum*,int ) ;
 int * config_group_names ;
 char** config_type_names ;
 char* get_config_unit_name (int) ;
 struct config_generic** guc_variables ;
 scalar_t__ is_member_of_role (int ,int ) ;
 int num_guc_variables ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,int) ;

void
GetConfigOptionByNum(int varnum, const char **values, bool *noshow)
{
 char buffer[256];
 struct config_generic *conf;


 Assert((varnum >= 0) && (varnum < num_guc_variables));

 conf = guc_variables[varnum];

 if (noshow)
 {
  if ((conf->flags & GUC_NO_SHOW_ALL) ||
   ((conf->flags & GUC_SUPERUSER_ONLY) &&
    !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS)))
   *noshow = 1;
  else
   *noshow = 0;
 }




 values[0] = conf->name;


 values[1] = _ShowOption(conf, 0);


 values[2] = get_config_unit_name(conf->flags);


 values[3] = _(config_group_names[conf->group]);


 values[4] = _(conf->short_desc);


 values[5] = _(conf->long_desc);


 values[6] = GucContext_Names[conf->context];


 values[7] = config_type_names[conf->vartype];


 values[8] = GucSource_Names[conf->source];


 switch (conf->vartype)
 {
  case 132:
   {
    struct config_bool *lconf = (struct config_bool *) conf;


    values[9] = ((void*)0);


    values[10] = ((void*)0);


    values[11] = ((void*)0);


    values[12] = pstrdup(lconf->boot_val ? "on" : "off");


    values[13] = pstrdup(lconf->reset_val ? "on" : "off");
   }
   break;

  case 130:
   {
    struct config_int *lconf = (struct config_int *) conf;


    snprintf(buffer, sizeof(buffer), "%d", lconf->min);
    values[9] = pstrdup(buffer);


    snprintf(buffer, sizeof(buffer), "%d", lconf->max);
    values[10] = pstrdup(buffer);


    values[11] = ((void*)0);


    snprintf(buffer, sizeof(buffer), "%d", lconf->boot_val);
    values[12] = pstrdup(buffer);


    snprintf(buffer, sizeof(buffer), "%d", lconf->reset_val);
    values[13] = pstrdup(buffer);
   }
   break;

  case 129:
   {
    struct config_real *lconf = (struct config_real *) conf;


    snprintf(buffer, sizeof(buffer), "%g", lconf->min);
    values[9] = pstrdup(buffer);


    snprintf(buffer, sizeof(buffer), "%g", lconf->max);
    values[10] = pstrdup(buffer);


    values[11] = ((void*)0);


    snprintf(buffer, sizeof(buffer), "%g", lconf->boot_val);
    values[12] = pstrdup(buffer);


    snprintf(buffer, sizeof(buffer), "%g", lconf->reset_val);
    values[13] = pstrdup(buffer);
   }
   break;

  case 128:
   {
    struct config_string *lconf = (struct config_string *) conf;


    values[9] = ((void*)0);


    values[10] = ((void*)0);


    values[11] = ((void*)0);


    if (lconf->boot_val == ((void*)0))
     values[12] = ((void*)0);
    else
     values[12] = pstrdup(lconf->boot_val);


    if (lconf->reset_val == ((void*)0))
     values[13] = ((void*)0);
    else
     values[13] = pstrdup(lconf->reset_val);
   }
   break;

  case 131:
   {
    struct config_enum *lconf = (struct config_enum *) conf;


    values[9] = ((void*)0);


    values[10] = ((void*)0);







    values[11] = config_enum_get_options((struct config_enum *) conf,
              "{\"", "\"}", "\",\"");


    values[12] = pstrdup(config_enum_lookup_by_value(lconf,
                 lconf->boot_val));


    values[13] = pstrdup(config_enum_lookup_by_value(lconf,
                 lconf->reset_val));
   }
   break;

  default:
   {





    values[9] = ((void*)0);


    values[10] = ((void*)0);


    values[11] = ((void*)0);


    values[12] = ((void*)0);


    values[13] = ((void*)0);
   }
   break;
 }






 if (conf->source == PGC_S_FILE &&
  is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS))
 {
  values[14] = conf->sourcefile;
  snprintf(buffer, sizeof(buffer), "%d", conf->sourceline);
  values[15] = pstrdup(buffer);
 }
 else
 {
  values[14] = ((void*)0);
  values[15] = ((void*)0);
 }

 values[16] = (conf->status & GUC_PENDING_RESTART) ? "t" : "f";
}
