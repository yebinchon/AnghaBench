
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {char* name; size_t context; size_t group; int vartype; int * long_desc; int * short_desc; } ;
struct TYPE_15__ {int boot_val; } ;
struct TYPE_12__ {char* boot_val; } ;
struct TYPE_11__ {double reset_val; double min; double max; } ;
struct TYPE_10__ {int reset_val; int min; int max; } ;
struct TYPE_9__ {int reset_val; } ;
struct TYPE_14__ {TYPE_5__ generic; TYPE_8__ _enum; TYPE_4__ string; TYPE_3__ real; TYPE_2__ integer; TYPE_1__ _bool; } ;
typedef TYPE_6__ mixedStruct ;


 char** GucContext_Names ;





 char* _ (int *) ;
 char* config_enum_lookup_by_value (TYPE_8__*,int ) ;
 int ** config_group_names ;
 int printf (char*,...) ;
 int write_stderr (char*) ;

__attribute__((used)) static void
printMixedStruct(mixedStruct *structToPrint)
{
 printf("%s\t%s\t%s\t",
     structToPrint->generic.name,
     GucContext_Names[structToPrint->generic.context],
     _(config_group_names[structToPrint->generic.group]));

 switch (structToPrint->generic.vartype)
 {

  case 132:
   printf("BOOLEAN\t%s\t\t\t",
       (structToPrint->_bool.reset_val == 0) ?
       "FALSE" : "TRUE");
   break;

  case 130:
   printf("INTEGER\t%d\t%d\t%d\t",
       structToPrint->integer.reset_val,
       structToPrint->integer.min,
       structToPrint->integer.max);
   break;

  case 129:
   printf("REAL\t%g\t%g\t%g\t",
       structToPrint->real.reset_val,
       structToPrint->real.min,
       structToPrint->real.max);
   break;

  case 128:
   printf("STRING\t%s\t\t\t",
       structToPrint->string.boot_val ? structToPrint->string.boot_val : "");
   break;

  case 131:
   printf("ENUM\t%s\t\t\t",
       config_enum_lookup_by_value(&structToPrint->_enum,
              structToPrint->_enum.boot_val));
   break;

  default:
   write_stderr("internal error: unrecognized run-time parameter type\n");
   break;
 }

 printf("%s\t%s\n",
     (structToPrint->generic.short_desc == ((void*)0)) ? "" : _(structToPrint->generic.short_desc),
     (structToPrint->generic.long_desc == ((void*)0)) ? "" : _(structToPrint->generic.long_desc));
}
