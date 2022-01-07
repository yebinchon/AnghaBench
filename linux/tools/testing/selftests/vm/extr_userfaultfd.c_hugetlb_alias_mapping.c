
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long __u64 ;


 scalar_t__ area_dst_alias ;
 int map_shared ;

__attribute__((used)) static void hugetlb_alias_mapping(__u64 *start, size_t len, unsigned long offset)
{
 if (!map_shared)
  return;






 *start = (unsigned long) area_dst_alias + offset;
}
