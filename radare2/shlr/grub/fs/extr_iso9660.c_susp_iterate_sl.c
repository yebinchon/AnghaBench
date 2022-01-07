
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_iso9660_susp_entry {int len; scalar_t__ sig; } ;
struct grub_iso9660_read_symlink_closure {int addslash; } ;
typedef scalar_t__ grub_err_t ;


 unsigned char* ENTRY_DATA (struct grub_iso9660_susp_entry*) ;
 int add_part (char*,int,struct grub_iso9660_read_symlink_closure*) ;
 scalar_t__ grub_errno ;
 unsigned int grub_le_to_cpu32 (int ) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;

__attribute__((used)) static grub_err_t
susp_iterate_sl (struct grub_iso9660_susp_entry *entry, void *closure)
{
  struct grub_iso9660_read_symlink_closure *c = closure;

  if (grub_strncmp ("SL", (char *) entry->sig, 2) == 0)
    {
      unsigned int pos = 1;


      while (pos < grub_le_to_cpu32 (entry->len))
 {
   if (c->addslash)
     {
       add_part ("/", 1, c);
       c->addslash = 0;
     }

          unsigned char *data = ENTRY_DATA(entry);

   switch (data[pos] & 30)
     {
     case 0:
       {



  add_part ((char *) &data[pos + 2],
     data[pos + 1], c);
  if ((data[pos] & 1))
    c->addslash = 1;

  break;
       }

     case 2:
       add_part ("./", 2, c);
       break;

     case 4:
       add_part ("../", 3, c);
       break;

     case 8:
       add_part ("/", 1, c);
       break;
     }


   pos += data[pos + 1] + 2;
 }


      if (grub_errno)
 return grub_errno;
    }

  return 0;
}
