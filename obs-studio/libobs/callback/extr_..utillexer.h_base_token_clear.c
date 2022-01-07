
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_token {int dummy; } ;


 int memset (struct base_token*,int ,int) ;

__attribute__((used)) static inline void base_token_clear(struct base_token *t)
{
 memset(t, 0, sizeof(struct base_token));
}
