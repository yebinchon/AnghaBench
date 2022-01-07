
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TZname; int state; } ;
typedef TYPE_1__ pg_tz ;


 scalar_t__ TZ_STRLEN_MAX ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ tzload (char const*,int *,int *,int) ;
 int tzparse (char const*,int *,int) ;

__attribute__((used)) static pg_tz *
pg_load_tz(const char *name)
{
 static pg_tz tz;

 if (strlen(name) > TZ_STRLEN_MAX)
  return ((void*)0);




 if (strcmp(name, "GMT") == 0)
 {
  if (!tzparse(name, &tz.state, 1))
  {

   return ((void*)0);
  }
 }
 else if (tzload(name, ((void*)0), &tz.state, 1) != 0)
 {
  if (name[0] == ':' || !tzparse(name, &tz.state, 0))
  {
   return ((void*)0);
  }
 }

 strcpy(tz.TZname, name);

 return &tz;
}
