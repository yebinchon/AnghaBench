
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_def {int tokens; } ;


 int da_push_back (int ,struct cf_token*) ;

__attribute__((used)) static inline void cf_def_addtoken(struct cf_def *cfd, struct cf_token *token)
{
 da_push_back(cfd->tokens, token);
}
