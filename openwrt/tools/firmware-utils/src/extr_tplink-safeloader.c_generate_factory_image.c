
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct image_partition_entry {scalar_t__ size; scalar_t__ name; } ;
struct device_info {int partitions; int vendor; } ;


 int errno ;
 int error (int,int ,char*) ;
 void* malloc (size_t) ;
 int memcpy (void*,int ,size_t) ;
 int memset (void*,int,size_t) ;
 int put32 (void*,size_t) ;
 int put_md5 (void*,void*,size_t) ;
 int put_partitions (void*,int ,struct image_partition_entry const*) ;
 size_t strlen (int ) ;

__attribute__((used)) static void * generate_factory_image(struct device_info *info, const struct image_partition_entry *parts, size_t *len) {
 *len = 0x1814;

 size_t i;
 for (i = 0; parts[i].name; i++)
  *len += parts[i].size;

 uint8_t *image = malloc(*len);
 if (!image)
  error(1, errno, "malloc");

 memset(image, 0xff, *len);
 put32(image, *len);

 if (info->vendor) {
  size_t vendor_len = strlen(info->vendor);
  put32(image+0x14, vendor_len);
  memcpy(image+0x18, info->vendor, vendor_len);
 }

 put_partitions(image + 0x1014, info->partitions, parts);
 put_md5(image+0x04, image+0x14, *len-0x14);

 return image;
}
