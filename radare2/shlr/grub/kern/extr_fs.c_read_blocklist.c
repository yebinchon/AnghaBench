
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct read_blocklist_closure {scalar_t__ part_start; int num; int total_size; TYPE_1__* blocks; } ;
struct grub_fs_block {int dummy; } ;
typedef scalar_t__ grub_disk_addr_t ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ length; } ;


 int BLOCKLIST_INC_STEP ;
 scalar_t__ GRUB_DISK_SECTOR_BITS ;
 TYPE_1__* grub_realloc (TYPE_1__*,int) ;

__attribute__((used)) static void
read_blocklist (grub_disk_addr_t sector, unsigned offset,
  unsigned length, void *closure)
{
  struct read_blocklist_closure *c = closure;

  sector = ((sector - c->part_start) << GRUB_DISK_SECTOR_BITS) + offset;

  if ((c->num) &&
      (c->blocks[c->num - 1].offset + c->blocks[c->num - 1].length == sector))
    {
      c->blocks[c->num - 1].length += length;
      goto quit;
    }

  if ((c->num & (BLOCKLIST_INC_STEP - 1)) == 0)
    {
      c->blocks = grub_realloc (c->blocks, (c->num + BLOCKLIST_INC_STEP) *
    sizeof (struct grub_fs_block));
      if (! c->blocks)
 return;
    }

  c->blocks[c->num].offset = sector;
  c->blocks[c->num].length = length;
  c->num++;

 quit:
  c->total_size += length;
}
