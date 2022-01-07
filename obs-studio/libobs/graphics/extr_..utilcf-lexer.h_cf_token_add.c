
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_token {int unmerged_str; int str; } ;


 int strref_add (int *,int *) ;

__attribute__((used)) static inline void cf_token_add(struct cf_token *dst,
    const struct cf_token *add)
{
 strref_add(&dst->str, &add->str);
 strref_add(&dst->unmerged_str, &add->unmerged_str);
}
