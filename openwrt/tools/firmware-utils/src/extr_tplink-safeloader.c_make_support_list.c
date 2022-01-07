
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_partition_entry {int * data; } ;
struct device_info {int support_trail; int support_list; } ;


 struct image_partition_entry alloc_image_partition (char*,size_t) ;
 int memcpy (int *,int ,size_t) ;
 int memset (int *,int ,int) ;
 int put32 (int *,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static struct image_partition_entry make_support_list(struct device_info *info) {
 size_t len = strlen(info->support_list);
 struct image_partition_entry entry = alloc_image_partition("support-list", len + 9);

 put32(entry.data, len);
 memset(entry.data+4, 0, 4);
 memcpy(entry.data+8, info->support_list, len);
 entry.data[len+8] = info->support_trail;

 return entry;
}
