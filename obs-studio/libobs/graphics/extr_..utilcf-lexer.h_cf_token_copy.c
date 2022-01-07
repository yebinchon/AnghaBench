
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int dummy; } ;


 int memcpy (struct cf_token*,struct cf_token const*,int) ;

__attribute__((used)) static inline void cf_token_copy(struct cf_token *dst,
     const struct cf_token *src)
{
 memcpy(dst, src, sizeof(struct cf_token));
}
