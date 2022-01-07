
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache_entry {int component_len; int component; } ;


 int strncmp (int ,int ,int) ;

int name_cmp(struct name_cache_entry *lhs, struct name_cache_entry *rhs)
{
    const int diff = rhs->component_len - lhs->component_len;
    return diff ? diff : strncmp(lhs->component, rhs->component, lhs->component_len);
}
