
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ArraySize (char const**) ;
 char const** azCompileOpt ;

const char *sqlite3_compileoption_get(int N){
  if( N>=0 && N<ArraySize(azCompileOpt) ){
    return azCompileOpt[N];
  }
  return 0;
}
