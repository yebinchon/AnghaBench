
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_token {int dummy; } ;
struct TYPE_2__ {struct cf_token* array; } ;
struct cf_preprocessor {TYPE_1__ tokens; } ;



__attribute__((used)) static inline struct cf_token *
cf_preprocessor_get_tokens(struct cf_preprocessor *pp)
{
 return pp->tokens.array;
}
