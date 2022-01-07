
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int grub_err_t ;
typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_list_t ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* mod; } ;
struct TYPE_5__ {int name; } ;


 int GRUB_ERR_BAD_MODULE ;
 int GRUB_ERR_NONE ;
 scalar_t__ grub_dl_get (int ) ;
 TYPE_2__* grub_dl_head ;
 int grub_errno ;
 int grub_error (int ,char*,int ) ;
 scalar_t__ grub_malloc (int) ;

grub_err_t
grub_dl_add (grub_dl_t mod)
{
  grub_dl_list_t l;

  if (grub_dl_get (mod->name))
    return grub_error (GRUB_ERR_BAD_MODULE,
         "`%s' is already loaded", mod->name);

  l = (grub_dl_list_t) grub_malloc (sizeof (*l));
  if (! l)
    return grub_errno;

  l->mod = mod;
  l->next = grub_dl_head;
  grub_dl_head = l;

  return GRUB_ERR_NONE;
}
