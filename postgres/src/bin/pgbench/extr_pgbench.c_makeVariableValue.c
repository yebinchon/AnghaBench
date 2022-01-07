
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {char* svalue; char* name; TYPE_2__ value; } ;
typedef TYPE_1__ Variable ;


 scalar_t__ PGBT_NO_VALUE ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ is_an_int (char*) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 scalar_t__ pg_strncasecmp (char*,char*,size_t) ;
 int setBoolValue (TYPE_2__*,int) ;
 int setDoubleValue (TYPE_2__*,double) ;
 int setIntValue (TYPE_2__*,int ) ;
 int setNullValue (TYPE_2__*) ;
 int stderr ;
 size_t strlen (char*) ;
 int strtodouble (char*,int,double*) ;
 int strtoint64 (char*,int,int *) ;

__attribute__((used)) static bool
makeVariableValue(Variable *var)
{
 size_t slen;

 if (var->value.type != PGBT_NO_VALUE)
  return 1;

 slen = strlen(var->svalue);

 if (slen == 0)

  return 0;

 if (pg_strcasecmp(var->svalue, "null") == 0)
 {
  setNullValue(&var->value);
 }





 else if (pg_strncasecmp(var->svalue, "true", slen) == 0 ||
    pg_strncasecmp(var->svalue, "yes", slen) == 0 ||
    pg_strcasecmp(var->svalue, "on") == 0)
 {
  setBoolValue(&var->value, 1);
 }
 else if (pg_strncasecmp(var->svalue, "false", slen) == 0 ||
    pg_strncasecmp(var->svalue, "no", slen) == 0 ||
    pg_strcasecmp(var->svalue, "off") == 0 ||
    pg_strcasecmp(var->svalue, "of") == 0)
 {
  setBoolValue(&var->value, 0);
 }
 else if (is_an_int(var->svalue))
 {

  int64 iv;

  if (!strtoint64(var->svalue, 0, &iv))
   return 0;

  setIntValue(&var->value, iv);
 }
 else
 {
  double dv;

  if (!strtodouble(var->svalue, 1, &dv))
  {
   fprintf(stderr,
     "malformed variable \"%s\" value: \"%s\"\n",
     var->name, var->svalue);
   return 0;
  }
  setDoubleValue(&var->value, dv);
 }
 return 1;
}
