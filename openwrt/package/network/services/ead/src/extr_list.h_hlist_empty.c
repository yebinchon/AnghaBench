
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int first; } ;



__attribute__((used)) static inline int hlist_empty(const struct hlist_head *h)
{
 return !h->first;
}
