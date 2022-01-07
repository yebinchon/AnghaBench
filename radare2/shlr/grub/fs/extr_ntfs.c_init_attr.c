
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_ntfs_file {scalar_t__ buf; TYPE_1__* data; } ;
struct grub_ntfs_attr {int * sbuf; int edat_buf; int emft_buf; int attr_end; scalar_t__ attr_nxt; int flags; struct grub_ntfs_file* mft; } ;
struct TYPE_2__ {struct grub_ntfs_file mmft; } ;


 int AF_MMFT ;
 scalar_t__ u16at (scalar_t__,int) ;

__attribute__((used)) static void
init_attr (struct grub_ntfs_attr *at, struct grub_ntfs_file *mft)
{
  at->mft = mft;
  at->flags = (mft == &mft->data->mmft) ? AF_MMFT : 0;
  at->attr_nxt = mft->buf + u16at (mft->buf, 0x14);
  at->attr_end = at->emft_buf = at->edat_buf = at->sbuf = ((void*)0);
}
