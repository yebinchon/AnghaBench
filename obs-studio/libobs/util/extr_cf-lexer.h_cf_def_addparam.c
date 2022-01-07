
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;
struct cf_def {int params; } ;


 int da_push_back (int ,struct cf_token*) ;

__attribute__((used)) static inline void cf_def_addparam(struct cf_def *cfd, struct cf_token *param)
{
 da_push_back(cfd->params, param);
}
