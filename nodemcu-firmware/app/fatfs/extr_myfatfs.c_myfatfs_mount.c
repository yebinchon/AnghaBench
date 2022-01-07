
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_vol ;
struct TYPE_3__ {int * fns; int fs_type; } ;
struct myvfs_vol {struct myvfs_vol* ldrname; TYPE_1__ vfs_vol; int fs; } ;
struct TYPE_4__ {int pd; } ;


 int FR_OK ;
 int NUM_LOGICAL_DRIVES ;
 int VFS_FS_FATFS ;
 TYPE_2__* VolToPart ;
 int f_mount (int *,char const*,int) ;
 int free (struct myvfs_vol*) ;
 int last_result ;
 struct myvfs_vol* malloc (int) ;
 int myfatfs_vol_fns ;
 struct myvfs_vol* strdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char const** volstr ;

__attribute__((used)) static vfs_vol *myfatfs_mount( const char *name, int num )
{
  struct myvfs_vol *vol;
  const size_t len = strlen( name );


  if (num >= 0) {
    for (int i = 0; i < NUM_LOGICAL_DRIVES; i++) {
      if (0 == strncmp( name, volstr[i], strlen( volstr[i] ) )) {
        VolToPart[i].pd = num;
      }
    }
  }

  if (vol = malloc( sizeof( struct myvfs_vol ) )) {
    if (vol->ldrname = strdup( name )) {
      if (FR_OK == (last_result = f_mount( &(vol->fs), name, 1 ))) {
 vol->vfs_vol.fs_type = VFS_FS_FATFS;
 vol->vfs_vol.fns = &myfatfs_vol_fns;
 return (vfs_vol *)vol;
      }
    }
  }

  if (vol) {
    if (vol->ldrname) free( vol->ldrname );
    free( vol );
  }
  return ((void*)0);
}
