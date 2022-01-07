
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_partition {int size; int offset; } ;
struct mtd_info {int dummy; } ;
typedef int magic ;





 int AC49X_PARTTYPE_BOOTENV ;
 int AC49X_PARTTYPE_LINUX ;
 int AC49X_PARTTYPE_LOADER ;
 int AC49X_PARTTYPE_ROOTFS ;
 int AC49X_PARTTYPE_UNKNOWN ;




 int mtd_read (struct mtd_info*,int ,int,size_t*,int *) ;

int detect_parttype(struct mtd_info *master, struct mtd_partition part)
{
 unsigned int magic;
 size_t len;

 if (part.size < 4)
  return -1;

 mtd_read(master, part.offset, sizeof(magic), &len,
   (uint8_t *)&magic);

 if (len != sizeof(magic))
  return -1;

 switch (magic) {
 case 132:
  return AC49X_PARTTYPE_LOADER;
 case 133:
  return AC49X_PARTTYPE_LINUX;
 case 128:
 case 131:
 case 130:
  return AC49X_PARTTYPE_ROOTFS;
 case 134:
  return AC49X_PARTTYPE_BOOTENV;
 default:
  switch (magic & 0xFF) {
  case 129:
   return AC49X_PARTTYPE_ROOTFS;
  }
  switch (magic >> 8) {
  case 129:
   return AC49X_PARTTYPE_ROOTFS;
  }
  return AC49X_PARTTYPE_UNKNOWN;
 }
}
