
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 int memcmp (void const*,void const*,int ) ;

__attribute__((used)) static int avl_compare_macaddr(const void *k1, const void *k2, void *ptr)
{
 return memcmp(k1, k2, ETH_ALEN);
}
