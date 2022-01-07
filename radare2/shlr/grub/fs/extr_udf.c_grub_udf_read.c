
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_fshelp_node {int dummy; } ;
typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {int offset; int flags; int closure; int read_hook; scalar_t__ data; } ;


 int grub_udf_read_file (struct grub_fshelp_node*,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static grub_ssize_t
grub_udf_read (grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_fshelp_node *node = (struct grub_fshelp_node *) file->data;

  return grub_udf_read_file (node, file->read_hook, file->closure,
        file->flags, file->offset, len, buf);
}
