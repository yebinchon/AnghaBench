
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_preprocessor {int dummy; } ;


 int LEX_WARNING ;
 int cf_addew (struct cf_preprocessor*,struct cf_token const*,char const*,int ,char const*,char const*,char const*) ;

__attribute__((used)) static inline void cf_addwarning(struct cf_preprocessor *pp,
     const struct cf_token *token,
     const char *warning, const char *val1,
     const char *val2, const char *val3)
{
 cf_addew(pp, token, warning, LEX_WARNING, val1, val2, val3);
}
