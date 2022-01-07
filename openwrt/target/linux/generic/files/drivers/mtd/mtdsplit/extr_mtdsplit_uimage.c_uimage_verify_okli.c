
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uimage_header {scalar_t__ ih_magic; scalar_t__ ih_os; scalar_t__ ih_type; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ IH_MAGIC_OKLI ;
 scalar_t__ IH_OS_LINUX ;
 scalar_t__ IH_TYPE_KERNEL ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static ssize_t uimage_verify_okli(u_char *buf, size_t len, int *extralen)
{
 struct uimage_header *header = (struct uimage_header *)buf;


 if (be32_to_cpu(header->ih_magic) != IH_MAGIC_OKLI) {
  pr_debug("invalid uImage magic: %08x\n",
    be32_to_cpu(header->ih_magic));
  return -EINVAL;
 }

 if (header->ih_os != IH_OS_LINUX) {
  pr_debug("invalid uImage OS: %08x\n",
    be32_to_cpu(header->ih_os));
  return -EINVAL;
 }

 if (header->ih_type != IH_TYPE_KERNEL) {
  pr_debug("invalid uImage type: %08x\n",
    be32_to_cpu(header->ih_type));
  return -EINVAL;
 }

 return 0;
}
