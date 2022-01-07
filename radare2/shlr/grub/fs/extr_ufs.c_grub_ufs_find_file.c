
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ufs_dirent {int namelen_bsd; int direntlen; int ino; int namelen; int member_0; } ;
struct grub_ufs_data {int ino; int be; } ;
typedef scalar_t__ grub_err_t ;
typedef int dirent ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_ERR_FILE_NOT_FOUND ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_UFS_ATTR_DIR ;
 int GRUB_UFS_ATTR_LNK ;
 int GRUB_UFS_ATTR_TYPE ;
 int INODE_MODE (struct grub_ufs_data*) ;
 unsigned int INODE_SIZE (struct grub_ufs_data*) ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (int ,char*) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 unsigned int grub_num_to_cpu16 (int ,int ) ;
 int grub_num_to_cpu32 (int ,int ) ;
 char* grub_strchr (char*,char) ;
 int grub_strcmp (char*,char*) ;
 int grub_strcpy (char*,char const*) ;
 scalar_t__ grub_strlen (char const*) ;
 int grub_ufs_lookup_symlink (struct grub_ufs_data*,int) ;
 scalar_t__ grub_ufs_read_file (struct grub_ufs_data*,int ,int ,unsigned int,int,char*) ;
 int grub_ufs_read_inode (struct grub_ufs_data*,int ,int ) ;

__attribute__((used)) static grub_err_t
grub_ufs_find_file (struct grub_ufs_data *data, const char *path)
{
  char * fpath = grub_malloc(grub_strlen (path) + 1);
  char *name = fpath;
  char *next;
  unsigned int pos = 0;
  int dirino;

  grub_strcpy (fpath, path);


  if (name[0] == '/')
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
      next[0] = '\0';
      next++;
    }

  do
    {
      struct grub_ufs_dirent dirent = {0};
      int namelen;

      if (grub_strlen (name) == 0)
        {
          grub_free (fpath);
          return GRUB_ERR_NONE;
        }

      if (grub_ufs_read_file (data, 0, 0, pos, sizeof (dirent),
         (char *) &dirent) < 0)
        {
          grub_free (fpath);
          return grub_errno;
        }




      namelen = grub_num_to_cpu16 (dirent.namelen, data->be);

      {
 char * filename = grub_malloc(namelen + 1);
 if (grub_ufs_read_file (data, 0, 0, pos + sizeof (dirent),
    namelen, filename) < 0)
          {
            grub_free (fpath);
            grub_free (filename);
            return grub_errno;
          }

 filename[namelen] = '\0';

 if (!grub_strcmp (name, filename))
   {
     dirino = data->ino;
     grub_ufs_read_inode (data, grub_num_to_cpu32 (dirent.ino,
         data->be), 0);

     if ((INODE_MODE(data) & GRUB_UFS_ATTR_TYPE)
  == GRUB_UFS_ATTR_LNK)
       {
  grub_ufs_lookup_symlink (data, dirino);
  if (grub_errno)
                  {
                    grub_free (fpath);
                    grub_free (filename);
                    return grub_errno;
                  }
       }

     if (!next)
              {
                grub_free (fpath);
                grub_free (filename);
                return 0;
              }

     pos = 0;

     name = next;
     next = grub_strchr (name, '/');
     if (next)
       {
  next[0] = '\0';
  next++;
       }

     if ((INODE_MODE(data) & GRUB_UFS_ATTR_TYPE) != GRUB_UFS_ATTR_DIR)
              {
                grub_free (fpath);
                grub_free (filename);
                return grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
              }

            grub_free (filename);
     continue;
   }
 grub_free (filename);
      }

      pos += grub_num_to_cpu16 (dirent.direntlen, data->be);
    } while (pos < INODE_SIZE (data));

  grub_free (fpath);
  grub_error (GRUB_ERR_FILE_NOT_FOUND, "file not found");
  return grub_errno;
}
