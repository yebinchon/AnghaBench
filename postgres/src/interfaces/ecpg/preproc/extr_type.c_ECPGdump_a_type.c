
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct variable {int const brace_level; TYPE_1__* type; } ;
struct TYPE_4__ {struct ECPGtype* element; } ;
struct ECPGtype {int type; char* type_name; char* size; int counter; TYPE_2__ u; } ;
struct TYPE_3__ {int type; char* type_name; } ;
typedef int FILE ;


 int ECPGdump_a_simple (int *,char const*,scalar_t__,char*,char*,char const*,char const*,int ) ;
 int ECPGdump_a_struct (int *,char const*,char const*,char*,struct ECPGtype*,struct ECPGtype*,char const*,char const*) ;
 scalar_t__ ECPGt_NO_INDICATOR ;


 int ECPGt_const ;

 int ECPGt_sqlda ;


 int ET_ERROR ;
 int ET_WARNING ;
 int INDICATOR_NOT_ARRAY ;
 int INDICATOR_NOT_SIMPLE ;
 int INDICATOR_NOT_STRUCT ;
 int IS_SIMPLE_TYPE (scalar_t__) ;
 int PARSE_ERROR ;
 int base_yyerror (char*) ;
 struct variable* find_variable (char*) ;
 int free (char*) ;
 int indicator_set ;
 char* mm_strdup (char const*) ;
 int mmerror (int ,int ,char*,...) ;
 int mmfatal (int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
ECPGdump_a_type(FILE *o, const char *name, struct ECPGtype *type, const int brace_level,
    const char *ind_name, struct ECPGtype *ind_type, const int ind_brace_level,
    const char *prefix, const char *ind_prefix,
    char *arr_str_size, const char *struct_sizeof,
    const char *ind_struct_sizeof)
{
 struct variable *var;

 if (type->type != 130 && type->type != ECPGt_sqlda &&
  type->type != 131 && type->type != ECPGt_const &&
  brace_level >= 0)
 {
  char *str;

  str = mm_strdup(name);
  var = find_variable(str);
  free(str);

  if ((var->type->type != type->type) ||
   (var->type->type_name && !type->type_name) ||
   (!var->type->type_name && type->type_name) ||
   (var->type->type_name && type->type_name && strcmp(var->type->type_name, type->type_name) != 0))
   mmerror(PARSE_ERROR, ET_ERROR, "variable \"%s\" is hidden by a local variable of a different type", name);
  else if (var->brace_level != brace_level)
   mmerror(PARSE_ERROR, ET_WARNING, "variable \"%s\" is hidden by a local variable", name);

  if (ind_name && ind_type && ind_type->type != ECPGt_NO_INDICATOR && ind_brace_level >= 0)
  {
   str = mm_strdup(ind_name);
   var = find_variable(str);
   free(str);

   if ((var->type->type != ind_type->type) ||
    (var->type->type_name && !ind_type->type_name) ||
    (!var->type->type_name && ind_type->type_name) ||
    (var->type->type_name && ind_type->type_name && strcmp(var->type->type_name, ind_type->type_name) != 0))
    mmerror(PARSE_ERROR, ET_ERROR, "indicator variable \"%s\" is hidden by a local variable of a different type", ind_name);
   else if (var->brace_level != ind_brace_level)
    mmerror(PARSE_ERROR, ET_WARNING, "indicator variable \"%s\" is hidden by a local variable", ind_name);
  }
 }

 switch (type->type)
 {
  case 132:
   if (indicator_set && ind_type->type != 132)
    mmfatal(INDICATOR_NOT_ARRAY, "indicator for array/pointer has to be array/pointer");
   switch (type->u.element->type)
   {
    case 132:
     mmerror(PARSE_ERROR, ET_ERROR, "nested arrays are not supported (except strings)");
     break;
    case 129:
    case 128:
     ECPGdump_a_struct(o, name,
           ind_name,
           type->size,
           type->u.element,
           (ind_type == ((void*)0)) ? ((void*)0) : ((ind_type->type == ECPGt_NO_INDICATOR) ? ind_type : ind_type->u.element),
           prefix, ind_prefix);
     break;
    default:
     if (!IS_SIMPLE_TYPE(type->u.element->type))
      base_yyerror("internal error: unknown datatype, please report this to <pgsql-bugs@lists.postgresql.org>");

     ECPGdump_a_simple(o, name,
           type->u.element->type,
           type->u.element->size, type->size, struct_sizeof ? struct_sizeof : ((void*)0),
           prefix, type->u.element->counter);

     if (ind_type != ((void*)0))
     {
      if (ind_type->type == ECPGt_NO_INDICATOR)
      {
       char *str_neg_one = mm_strdup("-1");

       ECPGdump_a_simple(o, ind_name, ind_type->type, ind_type->size, str_neg_one, ((void*)0), ind_prefix, 0);
       free(str_neg_one);
      }
      else
      {
       ECPGdump_a_simple(o, ind_name, ind_type->u.element->type,
             ind_type->u.element->size, ind_type->size, ((void*)0), ind_prefix, 0);
      }
     }
   }
   break;
  case 129:
   {
    char *str_one = mm_strdup("1");

    if (indicator_set && ind_type->type != 129)
     mmfatal(INDICATOR_NOT_STRUCT, "indicator for struct has to be a struct");

    ECPGdump_a_struct(o, name, ind_name, str_one, type, ind_type, prefix, ind_prefix);
    free(str_one);
   }
   break;
  case 128:
   base_yyerror("type of union has to be specified");
   break;
  case 131:
   {




    char *str_varchar_one = mm_strdup("1");
    char *str_arr_one = mm_strdup("1");
    char *str_neg_one = mm_strdup("-1");

    if (indicator_set && (ind_type->type == 129 || ind_type->type == 132))
     mmfatal(INDICATOR_NOT_SIMPLE, "indicator for simple data type has to be simple");

    ECPGdump_a_simple(o, name, type->type, str_varchar_one, (arr_str_size && strcmp(arr_str_size, "0") != 0) ? arr_str_size : str_arr_one, struct_sizeof, prefix, 0);
    if (ind_type != ((void*)0))
     ECPGdump_a_simple(o, ind_name, ind_type->type, ind_type->size, (arr_str_size && strcmp(arr_str_size, "0") != 0) ? arr_str_size : str_neg_one, ind_struct_sizeof, ind_prefix, 0);

    free(str_varchar_one);
    free(str_arr_one);
    free(str_neg_one);
   }
   break;
  case 130:
   {




    char *str_neg_one = mm_strdup("-1");
    char *ind_type_neg_one = mm_strdup("-1");

    if (indicator_set && (ind_type->type == 129 || ind_type->type == 132))
     mmfatal(INDICATOR_NOT_SIMPLE, "indicator for simple data type has to be simple");

    ECPGdump_a_simple(o, name, type->type, ((void*)0), str_neg_one, ((void*)0), prefix, 0);
    if (ind_type != ((void*)0))
     ECPGdump_a_simple(o, ind_name, ind_type->type, ind_type->size, ind_type_neg_one, ((void*)0), ind_prefix, 0);

    free(str_neg_one);
    free(ind_type_neg_one);
   }
   break;
  default:
   {




    char *str_neg_one = mm_strdup("-1");
    char *ind_type_neg_one = mm_strdup("-1");

    if (indicator_set && (ind_type->type == 129 || ind_type->type == 132))
     mmfatal(INDICATOR_NOT_SIMPLE, "indicator for simple data type has to be simple");

    ECPGdump_a_simple(o, name, type->type, type->size, (arr_str_size && strcmp(arr_str_size, "0") != 0) ? arr_str_size : str_neg_one, struct_sizeof, prefix, type->counter);
    if (ind_type != ((void*)0))
     ECPGdump_a_simple(o, ind_name, ind_type->type, ind_type->size, (arr_str_size && strcmp(arr_str_size, "0") != 0) ? arr_str_size : ind_type_neg_one, ind_struct_sizeof, ind_prefix, 0);

    free(str_neg_one);
    free(ind_type_neg_one);
   }
   break;
 }
}
