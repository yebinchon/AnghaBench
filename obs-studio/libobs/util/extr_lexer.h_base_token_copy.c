
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_token {int dummy; } ;


 int memcpy (struct base_token*,struct base_token*,int) ;

__attribute__((used)) static inline void base_token_copy(struct base_token *dst,
       struct base_token *src)
{
 memcpy(dst, src, sizeof(struct base_token));
}
