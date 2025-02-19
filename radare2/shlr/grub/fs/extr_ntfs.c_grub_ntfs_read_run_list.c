
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* disk; } ;
struct grub_ntfs_rlst {char* cur_run; scalar_t__ curr_lcn; int flags; int next_vcn; int curr_vcn; TYPE_2__ comp; TYPE_3__* attr; } ;
typedef int grub_err_t ;
typedef scalar_t__ grub_disk_addr_t ;
struct TYPE_6__ {int flags; scalar_t__* attr_cur; } ;
struct TYPE_4__ {void (* read_hook ) (scalar_t__,unsigned int,unsigned int,void*) ;} ;


 int AF_ALST ;
 int GRUB_ERR_BAD_FS ;
 int RF_BLNK ;
 char* find_attr (TYPE_3__*,unsigned char) ;
 int grub_error (int ,char*) ;
 char* read_run_data (char*,int,scalar_t__*,int) ;
 int u16at (char*,int) ;

grub_err_t
grub_ntfs_read_run_list (struct grub_ntfs_rlst * ctx)
{
  int c1, c2;
  grub_disk_addr_t val;
  char *run;

  run = ctx->cur_run;
retry:
  c1 = ((unsigned char) (*run) & 0xF);
  c2 = ((unsigned char) (*run) >> 4);
  if (!c1)
    {
      if ((ctx->attr) && (ctx->attr->flags & AF_ALST))
 {
   void (*save_hook) (grub_disk_addr_t sector,
        unsigned offset,
        unsigned length,
        void *closure);

   save_hook = ctx->comp.disk->read_hook;
   ctx->comp.disk->read_hook = 0;
   run = find_attr (ctx->attr, (unsigned char) *ctx->attr->attr_cur);
   ctx->comp.disk->read_hook = save_hook;
   if (run)
     {
       if (run[8] == 0)
  return grub_error (GRUB_ERR_BAD_FS,
       "$DATA should be non-resident");

       run += u16at (run, 0x20);
       ctx->curr_lcn = 0;
       goto retry;
     }
 }
      return grub_error (GRUB_ERR_BAD_FS, "run list overflown");
    }
  run = read_run_data (run + 1, c1, &val, 0);
  ctx->curr_vcn = ctx->next_vcn;
  ctx->next_vcn += val;
  run = read_run_data (run, c2, &val, 1);
  ctx->curr_lcn += val;
  if (val == 0)
    ctx->flags |= RF_BLNK;
  else
    ctx->flags &= ~RF_BLNK;
  ctx->cur_run = run;
  return 0;
}
