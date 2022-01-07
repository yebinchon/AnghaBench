
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfsplus_catkey_internal {int parent; int name; } ;
struct grub_hfsplus_key_internal {struct grub_hfsplus_catkey_internal catkey; } ;
struct grub_hfsplus_catkey {int namelen; int* name; int parent; } ;
struct grub_hfsplus_key {struct grub_hfsplus_catkey catkey; } ;
typedef int grub_uint8_t ;


 int grub_be_to_cpu16 (int) ;
 int grub_be_to_cpu32 (int ) ;
 int grub_cpu_to_be16 (int) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 int grub_strncmp (char*,int ,int) ;
 int grub_utf16_to_utf8 (int *,int*,int) ;

__attribute__((used)) static int
grub_hfsplus_cmp_catkey (struct grub_hfsplus_key *keya,
    struct grub_hfsplus_key_internal *keyb)
{
  struct grub_hfsplus_catkey *catkey_a = &keya->catkey;
  struct grub_hfsplus_catkey_internal *catkey_b = &keyb->catkey;
  char *filename;
  int i;
  int diff;

  diff = grub_be_to_cpu32 (catkey_a->parent) - catkey_b->parent;
  if (diff)
    return diff;


  for (i = 0; i < grub_be_to_cpu16 (catkey_a->namelen); i++)
    catkey_a->name[i] = grub_be_to_cpu16 (catkey_a->name[i]);

  filename = grub_malloc (grub_be_to_cpu16 (catkey_a->namelen) + 1);

  if (! grub_utf16_to_utf8 ((grub_uint8_t *) filename, catkey_a->name,
       grub_be_to_cpu16 (catkey_a->namelen)))
    return -1;


  diff = grub_strncmp (filename, catkey_b->name,
         grub_be_to_cpu16 (catkey_a->namelen));

  grub_free (filename);



  for (i = 0; i < grub_be_to_cpu16 (catkey_a->namelen); i++)
    catkey_a->name[i] = grub_cpu_to_be16 (catkey_a->name[i]);
  return diff;
}
