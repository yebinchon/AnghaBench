
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* string_val; int enum_val; int real_val; int int_val; int bool_val; } ;
struct TYPE_12__ {int isset; TYPE_2__* gen; TYPE_1__ values; } ;
typedef TYPE_3__ relopt_value ;
struct TYPE_13__ {int (* validate_cb ) (char*) ;} ;
typedef TYPE_4__ relopt_string ;
struct TYPE_14__ {int max; int min; } ;
typedef TYPE_5__ relopt_real ;
struct TYPE_15__ {int max; int min; } ;
typedef TYPE_6__ relopt_int ;
struct TYPE_16__ {int symbol_val; int string_val; } ;
typedef TYPE_7__ relopt_enum_elt_def ;
struct TYPE_17__ {int default_val; int detailmsg; TYPE_7__* members; } ;
typedef TYPE_8__ relopt_enum ;
struct TYPE_11__ {char* name; int namelen; int type; } ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;





 int _ (int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,char*,...) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (int) ;
 int parse_bool (char*,int *) ;
 int parse_int (char*,int *,int ,int *) ;
 int parse_real (char*,int *,int ,int *) ;
 int pfree (char*) ;
 int pg_strcasecmp (char*,int ) ;
 int stub1 (char*) ;

__attribute__((used)) static void
parse_one_reloption(relopt_value *option, char *text_str, int text_len,
     bool validate)
{
 char *value;
 int value_len;
 bool parsed;
 bool nofree = 0;

 if (option->isset && validate)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("parameter \"%s\" specified more than once",
      option->gen->name)));

 value_len = text_len - option->gen->namelen - 1;
 value = (char *) palloc(value_len + 1);
 memcpy(value, text_str + option->gen->namelen + 1, value_len);
 value[value_len] = '\0';

 switch (option->gen->type)
 {
  case 132:
   {
    parsed = parse_bool(value, &option->values.bool_val);
    if (validate && !parsed)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for boolean option \"%s\": %s",
         option->gen->name, value)));
   }
   break;
  case 130:
   {
    relopt_int *optint = (relopt_int *) option->gen;

    parsed = parse_int(value, &option->values.int_val, 0, ((void*)0));
    if (validate && !parsed)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for integer option \"%s\": %s",
         option->gen->name, value)));
    if (validate && (option->values.int_val < optint->min ||
         option->values.int_val > optint->max))
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("value %s out of bounds for option \"%s\"",
         value, option->gen->name),
        errdetail("Valid values are between \"%d\" and \"%d\".",
            optint->min, optint->max)));
   }
   break;
  case 129:
   {
    relopt_real *optreal = (relopt_real *) option->gen;

    parsed = parse_real(value, &option->values.real_val, 0, ((void*)0));
    if (validate && !parsed)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for floating point option \"%s\": %s",
         option->gen->name, value)));
    if (validate && (option->values.real_val < optreal->min ||
         option->values.real_val > optreal->max))
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("value %s out of bounds for option \"%s\"",
         value, option->gen->name),
        errdetail("Valid values are between \"%f\" and \"%f\".",
            optreal->min, optreal->max)));
   }
   break;
  case 131:
   {
    relopt_enum *optenum = (relopt_enum *) option->gen;
    relopt_enum_elt_def *elt;

    parsed = 0;
    for (elt = optenum->members; elt->string_val; elt++)
    {
     if (pg_strcasecmp(value, elt->string_val) == 0)
     {
      option->values.enum_val = elt->symbol_val;
      parsed = 1;
      break;
     }
    }
    if (validate && !parsed)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("invalid value for enum option \"%s\": %s",
         option->gen->name, value),
        optenum->detailmsg ?
        errdetail_internal("%s", _(optenum->detailmsg)) : 0));





    if (!parsed)
     option->values.enum_val = optenum->default_val;
   }
   break;
  case 128:
   {
    relopt_string *optstring = (relopt_string *) option->gen;

    option->values.string_val = value;
    nofree = 1;
    if (validate && optstring->validate_cb)
     (optstring->validate_cb) (value);
    parsed = 1;
   }
   break;
  default:
   elog(ERROR, "unsupported reloption type %d", option->gen->type);
   parsed = 1;
   break;
 }

 if (parsed)
  option->isset = 1;
 if (!nofree)
  pfree(value);
}
