
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void sqlite3_int64 ;


 int SQLITE_FREE (void*) ;
 int assert (int) ;

__attribute__((used)) static void sqlite3MemFree(void *pPrior){



  sqlite3_int64 *p = (sqlite3_int64*)pPrior;
  assert( pPrior!=0 );
  p--;
  SQLITE_FREE(p);

}
