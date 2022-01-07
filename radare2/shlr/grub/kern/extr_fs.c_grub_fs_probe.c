
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* grub_fs_t ;
typedef TYPE_3__* grub_device_t ;
struct TYPE_11__ {TYPE_1__* net; scalar_t__ disk; } ;
struct TYPE_10__ {int (* dir ) (TYPE_3__*,char*,int ,int ) ;int name; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_2__* fs; } ;


 scalar_t__ GRUB_ERR_BAD_FS ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_ERR_UNKNOWN_FS ;
 int dummy_func ;
 int grub_dprintf (char*,char*,int ) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_error_pop () ;
 int grub_error_push () ;
 scalar_t__ grub_fs_autoload_hook () ;
 TYPE_2__* grub_fs_list ;
 int stub1 (TYPE_3__*,char*,int ,int ) ;
 int stub2 (TYPE_3__*,char*,int ,int ) ;

grub_fs_t
grub_fs_probe (grub_device_t device)
{
  grub_fs_t p;

  if (device->disk)
    {

      static int count = 0;

      for (p = grub_fs_list; p; p = p->next)
 {
   grub_dprintf ("fs", "Detecting %s...\n", p->name);
   (p->dir) (device, "/", dummy_func, 0);
   if (grub_errno == GRUB_ERR_NONE)
     return p;

   grub_error_push ();
   grub_dprintf ("fs", "%s detection failed.\n", p->name);
   grub_error_pop ();

   if (grub_errno != GRUB_ERR_BAD_FS)
     return 0;

   grub_errno = GRUB_ERR_NONE;
 }


      if (grub_fs_autoload_hook && count == 0)
 {
   count++;

   while (grub_fs_autoload_hook ())
     {
       p = grub_fs_list;

       (p->dir) (device, "/", dummy_func, 0);
       if (grub_errno == GRUB_ERR_NONE)
  {
    count--;
    return p;
  }

       if (grub_errno != GRUB_ERR_BAD_FS)
  {
    count--;
    return 0;
  }

       grub_errno = GRUB_ERR_NONE;
     }

   count--;
 }
    }
  else if (device->net->fs)
    return device->net->fs;

  grub_error (GRUB_ERR_UNKNOWN_FS, "unknown filesystem");
  return 0;
}
