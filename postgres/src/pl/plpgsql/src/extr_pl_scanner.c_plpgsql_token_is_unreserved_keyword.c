
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* UnreservedPLKeywordTokens ;
 int lengthof (int*) ;

bool
plpgsql_token_is_unreserved_keyword(int token)
{
 int i;

 for (i = 0; i < lengthof(UnreservedPLKeywordTokens); i++)
 {
  if (UnreservedPLKeywordTokens[i] == token)
   return 1;
 }
 return 0;
}
