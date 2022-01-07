
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ v1; } ;
struct grub_reiserfs_key {TYPE_2__ u; } ;
typedef enum grub_reiserfs_item_type { ____Placeholder_grub_reiserfs_item_type } grub_reiserfs_item_type ;


 int GRUB_REISERFS_ANY ;
 int GRUB_REISERFS_DIRECT ;
 int GRUB_REISERFS_DIRECTORY ;
 int GRUB_REISERFS_INDIRECT ;
 int GRUB_REISERFS_STAT ;
 int GRUB_REISERFS_UNKNOWN ;
 int grub_le_to_cpu32 (int ) ;

__attribute__((used)) static enum grub_reiserfs_item_type
grub_reiserfs_get_key_v1_type (const struct grub_reiserfs_key *key)
{
  switch (grub_le_to_cpu32 (key->u.v1.type))
    {
    case 0:
      return GRUB_REISERFS_STAT;
    case 555:
      return GRUB_REISERFS_ANY;
    case 500:
      return GRUB_REISERFS_DIRECTORY;
    case 0x20000000:
    case 0xFFFFFFFF:
      return GRUB_REISERFS_DIRECT;
    case 0x10000000:
    case 0xFFFFFFFE:
      return GRUB_REISERFS_INDIRECT;
    }
  return GRUB_REISERFS_UNKNOWN;
}
