
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenAuxData ;


 int ERROR ;
 size_t MAX_PUSHBACKS ;
 int elog (int ,char*) ;
 size_t num_pushbacks ;
 int * pushback_auxdata ;
 int* pushback_token ;

__attribute__((used)) static void
push_back_token(int token, TokenAuxData *auxdata)
{
 if (num_pushbacks >= MAX_PUSHBACKS)
  elog(ERROR, "too many tokens pushed back");
 pushback_token[num_pushbacks] = token;
 pushback_auxdata[num_pushbacks] = *auxdata;
 num_pushbacks++;
}
