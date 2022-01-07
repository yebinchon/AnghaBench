
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_entry {int length; scalar_t__ address; } ;


 int strncmp (char const*,char const*,int) ;

int mac_cmp(struct mac_entry *lhs, struct mac_entry *rhs)
{
    const int diff = rhs->length - lhs->length;
    return diff ? diff : strncmp((const char*)lhs->address,
        (const char*)rhs->address, lhs->length);
}
