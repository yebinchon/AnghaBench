
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;


 int memset (struct cf_token*,int ,int) ;

__attribute__((used)) static inline void cf_token_clear(struct cf_token *t)
{
 memset(t, 0, sizeof(struct cf_token));
}
