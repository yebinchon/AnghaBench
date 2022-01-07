
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfsplus_extkey_internal {int fileid; int start; } ;
struct grub_hfsplus_key_internal {struct grub_hfsplus_extkey_internal extkey; } ;
struct grub_hfsplus_extkey {int start; int fileid; } ;
struct grub_hfsplus_key {struct grub_hfsplus_extkey extkey; } ;


 int grub_be_to_cpu32 (int ) ;

__attribute__((used)) static int
grub_hfsplus_cmp_extkey (struct grub_hfsplus_key *keya,
    struct grub_hfsplus_key_internal *keyb)
{
  struct grub_hfsplus_extkey *extkey_a = &keya->extkey;
  struct grub_hfsplus_extkey_internal *extkey_b = &keyb->extkey;
  int diff;

  diff = grub_be_to_cpu32 (extkey_a->fileid) - extkey_b->fileid;

  if (diff)
    return diff;

  diff = grub_be_to_cpu32 (extkey_a->start) - extkey_b->start;
  return diff;
}
