
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_mutex ;


 int UNUSED_PARAMETER (int) ;

__attribute__((used)) static sqlite3_mutex *noopMutexAlloc(int id){
  UNUSED_PARAMETER(id);
  return (sqlite3_mutex*)8;
}
