
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_cache_entry {scalar_t__ fileid; } ;



int attr_cmp(struct attr_cache_entry *lhs, struct attr_cache_entry *rhs)
{
    return lhs->fileid < rhs->fileid ? -1 : lhs->fileid > rhs->fileid;
}
