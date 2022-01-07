
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset_type; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct grub_reiserfs_key {TYPE_3__ u; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef enum grub_reiserfs_item_type { ____Placeholder_grub_reiserfs_item_type } grub_reiserfs_item_type ;







 int assert (int) ;
 int grub_cpu_to_le32 (int) ;
 int grub_cpu_to_le64 (int) ;
 int grub_reiserfs_get_key_type (struct grub_reiserfs_key*) ;

__attribute__((used)) static void
grub_reiserfs_set_key_type (struct grub_reiserfs_key *key,
                            enum grub_reiserfs_item_type grub_type,
                            int version)
{
  grub_uint32_t type;

  switch (grub_type)
    {
    case 128:
      type = 0;
      break;
    case 132:
      type = (version == 1) ? 555 : 15;
      break;
    case 130:
      type = (version == 1) ? 500 : 3;
      break;
    case 131:
      type = (version == 1) ? 0xFFFFFFFF : 2;
      break;
    case 129:
      type = (version == 1) ? 0xFFFFFFFE : 1;
      break;
    default:
      return;
    }

  if (version == 1)
    key->u.v1.type = grub_cpu_to_le32 (type);
  else
    key->u.v2.offset_type
      = ((key->u.v2.offset_type & grub_cpu_to_le64 (~0ULL >> 4))
         | grub_cpu_to_le64 ((grub_uint64_t) type << 60));

  assert (grub_reiserfs_get_key_type (key) == grub_type);
}
