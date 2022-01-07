
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_preprocessor {int dummy; } ;


 int cf_adderror (struct cf_preprocessor*,struct cf_token const*,char*,int *,int *,int *) ;

__attribute__((used)) static inline void
cf_adderror_unexpected_endif_eof(struct cf_preprocessor *pp,
     const struct cf_token *token)
{
 cf_adderror(pp, token, "Unexpected end of file before #endif", ((void*)0),
      ((void*)0), ((void*)0));
}
