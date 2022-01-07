
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_FILTER ;
 int TK_ID ;
 scalar_t__ TK_LP ;
 int TK_RP ;
 scalar_t__ getToken (unsigned char const**) ;

__attribute__((used)) static int analyzeFilterKeyword(const unsigned char *z, int lastToken){
  if( lastToken==TK_RP && getToken(&z)==TK_LP ){
    return TK_FILTER;
  }
  return TK_ID;
}
