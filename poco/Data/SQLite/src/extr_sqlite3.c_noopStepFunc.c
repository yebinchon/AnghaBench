
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int * sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int assert (int ) ;

__attribute__((used)) static void noopStepFunc(
  sqlite3_context *p,
  int n,
  sqlite3_value **a
){
  UNUSED_PARAMETER(p);
  UNUSED_PARAMETER(n);
  UNUSED_PARAMETER(a);
  assert(0);
}
