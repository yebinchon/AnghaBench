
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_jfs_diropen {int ino; int name; } ;
struct TYPE_3__ {int mode; int inode; } ;
struct grub_jfs_data {TYPE_1__ currinode; } ;
typedef scalar_t__ grub_err_t ;


 int GRUB_ERR_FILE_NOT_FOUND ;
 scalar_t__ GRUB_ERR_NONE ;
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ;
 int GRUB_JFS_AGGR_INODE ;
 int GRUB_JFS_FILETYPE_LNK ;
 int GRUB_JFS_FILETYPE_MASK ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (char*) ;
 int grub_jfs_closedir (struct grub_jfs_diropen*) ;
 scalar_t__ grub_jfs_getent (struct grub_jfs_diropen*) ;
 int grub_jfs_lookup_symlink (struct grub_jfs_data*,int) ;
 struct grub_jfs_diropen* grub_jfs_opendir (struct grub_jfs_data*,TYPE_1__*) ;
 scalar_t__ grub_jfs_read_inode (struct grub_jfs_data*,int,TYPE_1__*) ;
 int grub_le_to_cpu32 (int ) ;
 char* grub_malloc (scalar_t__) ;
 char* grub_strchr (char*,char) ;
 int grub_strcmp (char*,int ) ;
 scalar_t__ grub_strlen (char const*) ;
 int grub_strncpy (char*,char const*,scalar_t__) ;

__attribute__((used)) static grub_err_t
grub_jfs_find_file (struct grub_jfs_data *data, const char *path)
{
  char * fpath = grub_malloc(grub_strlen (path));
  char *name = fpath;
  char *next;
  struct grub_jfs_diropen *diro;

  grub_strncpy (fpath, path, grub_strlen (path) + 1);

  if (grub_jfs_read_inode (data, GRUB_JFS_AGGR_INODE, &data->currinode))
    {
      grub_free (fpath);
      return grub_errno;
    }


  while (*name == '/')
    {
      name++;
      if (!*name)
        {
          grub_free (fpath);
          return 0;
        }
    }


  next = grub_strchr (name, '/');
  if (next)
    {
      while (*next == '/')
 {
   next[0] = '\0';
   next++;
 }
    }
  diro = grub_jfs_opendir (data, &data->currinode);
  if (!diro)
    {
      grub_free (fpath);
      return grub_errno;
    }

  for (;;)
    {
      if (grub_strlen (name) == 0)
        {
          grub_free (fpath);
          return GRUB_ERR_NONE;
        }

      if (grub_jfs_getent (diro) == GRUB_ERR_OUT_OF_RANGE)
 break;



      if (!grub_strcmp (name, diro->name))
 {
   int ino = diro->ino;
   int dirino = grub_le_to_cpu32 (data->currinode.inode);

   grub_jfs_closedir (diro);
   diro = 0;

   if (grub_jfs_read_inode (data, ino, &data->currinode))
     break;


   if ((grub_le_to_cpu32 (data->currinode.mode)
        & GRUB_JFS_FILETYPE_MASK) == GRUB_JFS_FILETYPE_LNK)
     {
       grub_jfs_lookup_symlink (data, dirino);
       if (grub_errno)
                {
                  grub_free (fpath);
                  return grub_errno;
                }
     }

   if (!next)
            {
              grub_free (fpath);
       return 0;
            }

   name = next;
   next = grub_strchr (name, '/');
   if (next)
     {
       next[0] = '\0';
       next++;
     }


   diro = grub_jfs_opendir (data, &data->currinode);
   if (!diro)
            {
              grub_free (fpath);
              return grub_errno;
            }

   continue;
 }
    }

  grub_jfs_closedir (diro);
  grub_error (GRUB_ERR_FILE_NOT_FOUND, "file not found");
  grub_free (fpath);
  return grub_errno;
}
