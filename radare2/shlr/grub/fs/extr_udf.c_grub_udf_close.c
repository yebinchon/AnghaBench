
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_fshelp_node {struct grub_fshelp_node* data; } ;
typedef TYPE_1__* grub_file_t ;
typedef int grub_err_t ;
struct TYPE_3__ {scalar_t__ data; } ;


 int GRUB_ERR_NONE ;
 int grub_dl_unref (int ) ;
 int grub_free (struct grub_fshelp_node*) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_udf_close (grub_file_t file)
{
  if (file->data)
    {
      struct grub_fshelp_node *node = (struct grub_fshelp_node *) file->data;

      grub_free (node->data);
      grub_free (node);
    }

  grub_dl_unref (my_mod);

  return GRUB_ERR_NONE;
}
