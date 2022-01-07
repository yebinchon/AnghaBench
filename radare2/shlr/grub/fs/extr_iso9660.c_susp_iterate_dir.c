
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_iso9660_susp_entry {int len; scalar_t__ sig; } ;
struct grub_iso9660_iterate_dir_closure {char** filename; int filename_alloc; int type; } ;
typedef int grub_uint8_t ;
typedef int grub_uint32_t ;
typedef int grub_err_t ;


 int* ENTRY_DATA (struct grub_iso9660_susp_entry*) ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_FSHELP_SYMLINK ;
 int GRUB_FSHELP_UNKNOWN ;

 int GRUB_ISO9660_FSTYPE_MASK ;


 int GRUB_ISO9660_RR_DOT ;
 int GRUB_ISO9660_RR_DOTDOT ;
 int grub_realloc (char*,scalar_t__) ;
 scalar_t__ grub_strlen (char*) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;
 int grub_strncpy (char*,char*,int) ;
 char* grub_zalloc (int) ;

__attribute__((used)) static grub_err_t
susp_iterate_dir (struct grub_iso9660_susp_entry *entry, void *closure)
{
  struct grub_iso9660_iterate_dir_closure *c = closure;
  char *filename = *(c->filename);


  if (grub_strncmp ("NM", (char *) entry->sig, 2) == 0)
    {


      grub_uint8_t *data = ENTRY_DATA(entry);
      if (data[0] & GRUB_ISO9660_RR_DOT)
 filename = ".";
      else if (data[0] & GRUB_ISO9660_RR_DOTDOT)
 filename = "..";
      else
 {
   int size = 1;
   if (filename)
     {
       size += grub_strlen (filename);
       grub_realloc (filename,
       grub_strlen (filename)
       + entry->len);
     }
   else
     {
       size = entry->len - 5;
       filename = grub_zalloc (size + 1);
     }
   c->filename_alloc = 1;
   grub_strncpy (filename, (char *) data + 1, size);
   filename[size] = '\0';
 }
    }

  else if (grub_strncmp ((char *) entry->sig, "PX", 2) == 0)
    {


      grub_uint8_t *data = ENTRY_DATA(entry);
      grub_uint32_t mode = ((data[0] + (data[1] << 8))
       & GRUB_ISO9660_FSTYPE_MASK);

      switch (mode)
 {
 case 130:
   c->type = GRUB_FSHELP_DIR;
   break;
 case 129:
   c->type = GRUB_FSHELP_REG;
   break;
 case 128:
   c->type = GRUB_FSHELP_SYMLINK;
   break;
 default:
   c->type = GRUB_FSHELP_UNKNOWN;
 }
    }

  *(c->filename) = filename;
  return 0;
}
