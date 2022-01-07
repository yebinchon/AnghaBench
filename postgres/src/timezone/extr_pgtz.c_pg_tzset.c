
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tzstate ;
struct state {int dummy; } ;
struct TYPE_5__ {char* TZname; int state; } ;
struct TYPE_4__ {TYPE_2__ tz; } ;
typedef TYPE_1__ pg_tz_cache ;
typedef TYPE_2__ pg_tz ;


 int ERROR ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int TZ_STRLEN_MAX ;
 int elog (int ,char*) ;
 scalar_t__ hash_search (int ,char*,int ,int *) ;
 int init_timezone_hashtable () ;
 int memcpy (int *,struct state*,int) ;
 int pg_toupper (unsigned char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int timezone_cache ;
 scalar_t__ tzload (char*,char*,struct state*,int) ;
 int tzparse (char*,struct state*,int) ;

pg_tz *
pg_tzset(const char *name)
{
 pg_tz_cache *tzp;
 struct state tzstate;
 char uppername[TZ_STRLEN_MAX + 1];
 char canonname[TZ_STRLEN_MAX + 1];
 char *p;

 if (strlen(name) > TZ_STRLEN_MAX)
  return ((void*)0);

 if (!timezone_cache)
  if (!init_timezone_hashtable())
   return ((void*)0);







 p = uppername;
 while (*name)
  *p++ = pg_toupper((unsigned char) *name++);
 *p = '\0';

 tzp = (pg_tz_cache *) hash_search(timezone_cache,
           uppername,
           HASH_FIND,
           ((void*)0));
 if (tzp)
 {

  return &tzp->tz;
 }




 if (strcmp(uppername, "GMT") == 0)
 {
  if (!tzparse(uppername, &tzstate, 1))
  {

   elog(ERROR, "could not initialize GMT time zone");
  }

  strcpy(canonname, uppername);
 }
 else if (tzload(uppername, canonname, &tzstate, 1) != 0)
 {
  if (uppername[0] == ':' || !tzparse(uppername, &tzstate, 0))
  {

   return ((void*)0);
  }

  strcpy(canonname, uppername);
 }


 tzp = (pg_tz_cache *) hash_search(timezone_cache,
           uppername,
           HASH_ENTER,
           ((void*)0));


 strcpy(tzp->tz.TZname, canonname);
 memcpy(&tzp->tz.state, &tzstate, sizeof(tzstate));

 return &tzp->tz;
}
