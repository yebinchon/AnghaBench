
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct grub_xfs_iterate_dir_closure {int (* hook ) (char const*,int,TYPE_9__*,void*) ;struct grub_fshelp_node* diro; void* closure; } ;
struct grub_xfs_dirblock_tail {int leaf_stale; int leaf_count; } ;
struct grub_xfs_dir_entry {size_t len; int name; } ;
struct grub_xfs_dir2_entry {size_t len; int inode; } ;
struct TYPE_14__ {int i8; int i4; } ;
struct TYPE_15__ {int count; TYPE_1__ parent; int smallino; } ;
struct TYPE_16__ {TYPE_2__ dirhead; struct grub_xfs_dir_entry* direntry; } ;
struct TYPE_17__ {TYPE_3__ dir; } ;
struct TYPE_21__ {int format; TYPE_4__ data; } ;
struct grub_fshelp_node {int ino; TYPE_8__ inode; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;
typedef int grub_ssize_t ;
typedef TYPE_9__* grub_fshelp_node_t ;
struct TYPE_20__ {int size; } ;
struct TYPE_22__ {TYPE_7__ inode; TYPE_6__* data; } ;
struct TYPE_18__ {int log2_bsize; int log2_dirblk; } ;
struct TYPE_19__ {TYPE_5__ sblock; } ;


 int GRUB_ERR_NOT_IMPLEMENTED_YET ;
 int GRUB_XFS_NEXT_DIRENT (int,size_t) ;
 int GRUB_XFS_ROUND_TO_DIRENT (int) ;



 int call_hook (int,char*,struct grub_xfs_iterate_dir_closure*) ;
 int grub_be_to_cpu16 (int) ;
 int grub_be_to_cpu32 (int ) ;
 int grub_be_to_cpu64 (int ) ;
 int grub_cpu_to_be64 (int) ;
 int grub_error (int ,char*,int) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 int grub_memcpy (char*,int ,size_t) ;
 int grub_xfs_read_file (TYPE_9__*,int ,int ,int ,int,int,char*) ;

__attribute__((used)) static int
grub_xfs_iterate_dir (grub_fshelp_node_t dir,
         int (*hook) (const char *filename,
        enum grub_fshelp_filetype filetype,
        grub_fshelp_node_t node,
        void *closure),
        void *closure)
{
  struct grub_fshelp_node *diro = (struct grub_fshelp_node *) dir;
  struct grub_xfs_iterate_dir_closure c;

  c.hook = hook;
  c.closure = closure;
  c.diro = diro;
  switch (diro->inode.format)
    {
    case 128:
      {
 struct grub_xfs_dir_entry *de = &diro->inode.data.dir.direntry[0];
 int smallino = !diro->inode.data.dir.dirhead.smallino;
 int i;
 grub_uint64_t parent;



 if (smallino)
   {
     parent = grub_be_to_cpu32 (diro->inode.data.dir.dirhead.parent.i4);
     parent = grub_cpu_to_be64 (parent);

     de = (struct grub_xfs_dir_entry *) ((char *) de - 4);
   }
 else
   {
     parent = diro->inode.data.dir.dirhead.parent.i8;
   }


 if (call_hook (diro->ino, ".", &c))
   return 1;

 if (call_hook (parent, "..", &c))
   return 1;

 for (i = 0; i < diro->inode.data.dir.dirhead.count; i++)
   {
     grub_uint64_t ino;
     void *inopos = (((char *) de)
       + sizeof (struct grub_xfs_dir_entry)
       + de->len - 1);

  char name[de->len + 1];



     if (smallino)
       {
  ino = grub_be_to_cpu32 (*(grub_uint32_t *) inopos);
  ino = grub_cpu_to_be64 (ino);
       }
     else
       ino = *(grub_uint64_t *) inopos;

     grub_memcpy (name, de->name, de->len);
     name[de->len] = '\0';
     if (call_hook (ino, name, &c))
       return 1;

     de = ((struct grub_xfs_dir_entry *)
    (((char *) de)+ sizeof (struct grub_xfs_dir_entry) + de->len
     + ((smallino ? sizeof (grub_uint32_t)
         : sizeof (grub_uint64_t))) - 1));
   }
 break;
      }

    case 130:
    case 129:
      {
 grub_ssize_t numread;
 char *dirblock;
 grub_uint64_t blk;
        int dirblk_size, dirblk_log2;

        dirblk_log2 = (dir->data->sblock.log2_bsize
                       + dir->data->sblock.log2_dirblk);
        dirblk_size = 1 << dirblk_log2;

 dirblock = grub_malloc (dirblk_size);
 if (! dirblock)
   return 0;


 for (blk = 0;
      blk < (grub_be_to_cpu64 (dir->inode.size)
      >> dirblk_log2);
      blk++)
   {


     int pos = 16;
     int entries;
     int tail_start = (dirblk_size
         - sizeof (struct grub_xfs_dirblock_tail));

     struct grub_xfs_dirblock_tail *tail;
     tail = (struct grub_xfs_dirblock_tail *) &dirblock[tail_start];

     numread = grub_xfs_read_file (dir, 0, 0, 0,
       blk << dirblk_log2,
       dirblk_size, dirblock);
     if (numread != dirblk_size)
       return 0;

     entries = (grub_be_to_cpu32 (tail->leaf_count)
         - grub_be_to_cpu32 (tail->leaf_stale));


     while (pos < (dirblk_size
     - (int) sizeof (struct grub_xfs_dir2_entry)))
       {
  struct grub_xfs_dir2_entry *direntry;
  grub_uint16_t *freetag;
  char *filename;

  direntry = (struct grub_xfs_dir2_entry *) &dirblock[pos];
  freetag = (grub_uint16_t *) direntry;

  if (*freetag == 0XFFFF)
    {
      grub_uint16_t *skip = (grub_uint16_t *) (freetag + 1);


      pos += grub_be_to_cpu16 (*skip);

      continue;
    }

  filename = &dirblock[pos + sizeof (*direntry)];


  filename[direntry->len] = '\0';

  if (call_hook (direntry->inode, filename, &c))
    {
      grub_free (dirblock);
      return 1;
    }



  entries--;
  if (!entries)
    break;


  pos = GRUB_XFS_NEXT_DIRENT (pos, direntry->len);
  pos = GRUB_XFS_ROUND_TO_DIRENT (pos);
       }
   }
 grub_free (dirblock);
 break;
      }

    default:
      grub_error (GRUB_ERR_NOT_IMPLEMENTED_YET,
    "XFS does not support inode format %d yet",
    diro->inode.format);
    }
  return 0;
}
