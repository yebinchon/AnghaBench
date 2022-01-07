
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u_char ;
struct uimage_header {scalar_t__ ih_os; scalar_t__ ih_type; int ih_magic; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ IH_OS_LINUX ;
 scalar_t__ IH_TYPE_FILESYSTEM ;
 scalar_t__ IH_TYPE_KERNEL ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static ssize_t uimage_verify_wndr3700(u_char *buf, size_t len, int *extralen)
{
 struct uimage_header *header = (struct uimage_header *)buf;
 uint8_t expected_type = IH_TYPE_FILESYSTEM;

 switch (be32_to_cpu(header->ih_magic)) {
 case 129:
 case 135:
 case 134:
 case 133:
 case 132:
 case 130:
 case 137:
 case 136:
 case 128:
  break;
 case 131:
  expected_type = IH_TYPE_KERNEL;
  break;
 default:
  return -EINVAL;
 }

 if (header->ih_os != IH_OS_LINUX ||
     header->ih_type != expected_type)
  return -EINVAL;

 return 0;
}
