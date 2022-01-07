
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pg_tz_cache ;
typedef int hash_ctl ;
struct TYPE_4__ {int entrysize; scalar_t__ keysize; } ;
typedef TYPE_1__ HASHCTL ;


 int HASH_ELEM ;
 int MemSet (TYPE_1__*,int ,int) ;
 scalar_t__ TZ_STRLEN_MAX ;
 int hash_create (char*,int,TYPE_1__*,int ) ;
 int timezone_cache ;

__attribute__((used)) static bool
init_timezone_hashtable(void)
{
 HASHCTL hash_ctl;

 MemSet(&hash_ctl, 0, sizeof(hash_ctl));

 hash_ctl.keysize = TZ_STRLEN_MAX + 1;
 hash_ctl.entrysize = sizeof(pg_tz_cache);

 timezone_cache = hash_create("Timezones",
         4,
         &hash_ctl,
         HASH_ELEM);
 if (!timezone_cache)
  return 0;

 return 1;
}
