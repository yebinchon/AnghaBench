
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sqlerrmc; int sqlerrml; } ;
struct sqlca_t {int sqlcode; TYPE_1__ sqlerrm; int sqlstate; } ;
 int ECPGfree_auto_mem () ;
 struct sqlca_t* ECPGget_sqlca () ;
 char* ecpg_gettext (char*) ;
 int ecpg_log (char*,...) ;
 int snprintf (int ,int,char*,...) ;
 int strlen (int ) ;
 int strncpy (int ,char const*,int) ;

void
ecpg_raise(int line, int code, const char *sqlstate, const char *str)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_log("out of memory");
  ECPGfree_auto_mem();
  return;
 }

 sqlca->sqlcode = code;
 strncpy(sqlca->sqlstate, sqlstate, sizeof(sqlca->sqlstate));

 switch (code)
 {
  case 140:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("no data found on line %d"), line);
   break;

  case 137:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("out of memory on line %d"), line);
   break;

  case 130:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("unsupported type \"%s\" on line %d"), str, line);
   break;

  case 135:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("too many arguments on line %d"), line);
   break;

  case 136:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("too few arguments on line %d"), line);
   break;

  case 145:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("invalid input syntax for type int: \"%s\", on line %d"), str, line);
   break;

  case 133:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("invalid input syntax for type unsigned int: \"%s\", on line %d"), str, line);
   break;

  case 146:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("invalid input syntax for floating-point type: \"%s\", on line %d"), str, line);
   break;

  case 149:
   if (str)
    snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


       ecpg_gettext("invalid syntax for type boolean: \"%s\", on line %d"), str, line);
   else
    snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


       ecpg_gettext("could not convert boolean value: size mismatch, on line %d"), line);
   break;

  case 147:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("empty query on line %d"), line);
   break;

  case 142:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("null value without indicator on line %d"), line);
   break;

  case 139:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("variable does not have an array type on line %d"), line);
   break;

  case 148:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("data read from server is not an array on line %d"), line);
   break;

  case 151:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("inserting an array of variables is not supported on line %d"), line);
   break;

  case 138:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("connection \"%s\" does not exist on line %d"), str, line);
   break;

  case 141:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("not connected to connection \"%s\" on line %d"), str, line);
   break;

  case 143:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("invalid statement name \"%s\" on line %d"), str, line);
   break;

  case 132:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("descriptor \"%s\" not found on line %d"), str, line);
   break;

  case 144:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("descriptor index out of range on line %d"), line);
   break;

  case 131:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("unrecognized descriptor item \"%s\" on line %d"), str, line);
   break;

  case 128:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("variable does not have a numeric type on line %d"), line);
   break;

  case 129:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("variable does not have a character type on line %d"), line);
   break;

  case 134:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("error in transaction processing on line %d"), line);
   break;

  case 150:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("could not connect to database \"%s\" on line %d"), str, line);
   break;

  default:
   snprintf(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),


      ecpg_gettext("SQL error %d on line %d"), code, line);
   break;
 }

 sqlca->sqlerrm.sqlerrml = strlen(sqlca->sqlerrm.sqlerrmc);
 ecpg_log("raising sqlcode %d on line %d: %s\n", code, line, sqlca->sqlerrm.sqlerrmc);


 ECPGfree_auto_mem();
}
