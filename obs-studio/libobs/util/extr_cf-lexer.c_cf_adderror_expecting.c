
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_preprocessor {int dummy; } ;


 int cf_adderror (struct cf_preprocessor*,struct cf_token const*,char*,char const*,int *,int *) ;

__attribute__((used)) static inline void cf_adderror_expecting(struct cf_preprocessor *pp,
      const struct cf_token *token,
      const char *expecting)
{
 cf_adderror(pp, token, "Expected $1", expecting, ((void*)0), ((void*)0));
}
