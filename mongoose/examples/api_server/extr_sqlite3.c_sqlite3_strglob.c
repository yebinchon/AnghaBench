
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int globInfo ;
 scalar_t__ patternCompare (int *,int *,int *,int ) ;

int sqlite3_strglob(const char *zGlobPattern, const char *zString){
  return patternCompare((u8*)zGlobPattern, (u8*)zString, &globInfo, 0)==0;
}
