
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allistrue; scalar_t__ sign; } ;
typedef int TRGM ;
typedef TYPE_1__ CACHESIGN ;
typedef int BITVEC ;


 scalar_t__ GETSIGN (int *) ;
 scalar_t__ ISALLTRUE (int *) ;
 scalar_t__ ISARRKEY (int *) ;
 int makesign (scalar_t__,int *) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void
fillcache(CACHESIGN *item, TRGM *key)
{
 item->allistrue = 0;
 if (ISARRKEY(key))
  makesign(item->sign, key);
 else if (ISALLTRUE(key))
  item->allistrue = 1;
 else
  memcpy((void *) item->sign, (void *) GETSIGN(key), sizeof(BITVEC));
}
