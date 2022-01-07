
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int UNUSED_PARAMETER2 (void*,int ) ;
 int sqlite3_release_memory (int) ;

__attribute__((used)) static void softHeapLimitEnforcer(
  void *NotUsed,
  sqlite3_int64 NotUsed2,
  int allocSize
){
  UNUSED_PARAMETER2(NotUsed, NotUsed2);
  sqlite3_release_memory(allocSize);
}
