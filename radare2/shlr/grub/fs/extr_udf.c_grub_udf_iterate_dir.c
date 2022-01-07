
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int tag_ident; } ;
struct grub_udf_file_ident {int characteristics; int file_ident_length; int imp_use_length; int icb; TYPE_2__ tag; } ;
struct grub_fshelp_node {int dummy; } ;
typedef int grub_uint8_t ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;
typedef unsigned int grub_size_t ;
typedef TYPE_3__* grub_fshelp_node_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
typedef int dirent ;
struct TYPE_10__ {int file_size; } ;
struct TYPE_12__ {int data; TYPE_1__ fe; } ;


 int GRUB_ERR_BAD_FS ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_UDF_FID_CHAR_DIRECTORY ;
 int GRUB_UDF_FID_CHAR_PARENT ;
 scalar_t__ GRUB_UDF_TAG_IDENT_FID ;
 scalar_t__ U16 (int ) ;
 int U64 (int ) ;
 int grub_error (int ,char*) ;
 int grub_free (TYPE_3__*) ;
 void* grub_malloc (int) ;
 int grub_memcpy (char*,char*,int) ;
 int grub_udf_read_file (TYPE_3__*,int ,int ,int ,int,int,char*) ;
 scalar_t__ grub_udf_read_icb (int ,int *,TYPE_3__*) ;
 char* grub_utf16_to_utf8 (int*,int*,unsigned int) ;

__attribute__((used)) static int
grub_udf_iterate_dir (grub_fshelp_node_t dir,
        int (*hook) (const char *filename,
       enum grub_fshelp_filetype filetype,
       grub_fshelp_node_t node,
       void *closure),
        void *closure)
{
  grub_fshelp_node_t child;
  struct grub_udf_file_ident dirent;
  grub_uint32_t offset = 0;

  child = grub_malloc (sizeof (struct grub_fshelp_node));
  if (!child)
    return 0;


  grub_memcpy ((char *) child, (char *) dir,
        sizeof (struct grub_fshelp_node));

  if (hook (".", GRUB_FSHELP_DIR, child, closure))
    return 1;

  while (offset < U64 (dir->fe.file_size))
    {
      if (grub_udf_read_file (dir, 0, 0, 0, offset, sizeof (dirent),
         (char *) &dirent) != sizeof (dirent))
 return 0;

      if (U16 (dirent.tag.tag_ident) != GRUB_UDF_TAG_IDENT_FID)
 {
   grub_error (GRUB_ERR_BAD_FS, "invalid fid tag");
   return 0;
 }

      child = grub_malloc (sizeof (struct grub_fshelp_node));
      if (!child)
 return 0;

      if (grub_udf_read_icb (dir->data, &dirent.icb, child))
 return 0;

      offset += sizeof (dirent) + U16 (dirent.imp_use_length);
      if (dirent.characteristics & GRUB_UDF_FID_CHAR_PARENT)
 {

   if (hook ("..", GRUB_FSHELP_DIR, child, closure))
     return 1;
 }
      else
 {
   enum grub_fshelp_filetype type;

   grub_uint8_t raw[dirent.file_ident_length];
   grub_uint16_t utf16[dirent.file_ident_length - 1];
   grub_uint8_t filename[dirent.file_ident_length * 2];





   grub_size_t utf16len = 0;

   type = ((dirent.characteristics & GRUB_UDF_FID_CHAR_DIRECTORY) ?
    (GRUB_FSHELP_DIR) : (GRUB_FSHELP_REG));

   if ((grub_udf_read_file (dir, 0, 0, 0, offset,
       dirent.file_ident_length,
       (char *) raw))
       != dirent.file_ident_length)
     return 0;

   if (raw[0] == 8)
     {
       unsigned i;
       utf16len = dirent.file_ident_length - 1;
       for (i = 0; i < utf16len; i++)
  utf16[i] = raw[i + 1];
     }
   if (raw[0] == 16)
     {
       unsigned i;
       utf16len = (dirent.file_ident_length - 1) / 2;
       for (i = 0; i < utf16len; i++)
  utf16[i] = (raw[2 * i + 1] << 8) | raw[2*i + 2];
     }
   if (raw[0] == 8 || raw[0] == 16)
     {
       *grub_utf16_to_utf8 (filename, utf16, utf16len) = '\0';

       if (hook ((char *) filename, type, child, closure))
  return 1;
     }
 }


      offset = (offset + dirent.file_ident_length + 3) & (~3);
    }
  grub_free(child);
  return 0;
}
