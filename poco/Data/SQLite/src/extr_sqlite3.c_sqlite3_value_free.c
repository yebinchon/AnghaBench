
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;


 int sqlite3ValueFree (int *) ;

void sqlite3_value_free(sqlite3_value *pOld){
  sqlite3ValueFree(pOld);
}
