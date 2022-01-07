
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_reiserfs_key {int dummy; } ;


 scalar_t__ GRUB_REISERFS_UNKNOWN ;
 scalar_t__ grub_reiserfs_get_key_v1_type (struct grub_reiserfs_key const*) ;

__attribute__((used)) static int
grub_reiserfs_get_key_version (const struct grub_reiserfs_key *key)
{
  return grub_reiserfs_get_key_v1_type (key) == GRUB_REISERFS_UNKNOWN ? 2 : 1;
}
