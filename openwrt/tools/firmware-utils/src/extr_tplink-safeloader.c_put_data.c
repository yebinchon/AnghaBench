
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_partition_entry {int data; } ;


 struct image_partition_entry alloc_image_partition (char const*,size_t) ;
 int memcpy (int ,char const*,size_t) ;

__attribute__((used)) static struct image_partition_entry put_data(const char *part_name, const char *datain, size_t len) {

 struct image_partition_entry entry = alloc_image_partition(part_name, len);

 memcpy(entry.data, datain, len);

 return entry;
}
