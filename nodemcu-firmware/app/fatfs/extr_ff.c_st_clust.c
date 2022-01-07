
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {scalar_t__ fs_type; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int DIR_FstClusHI ;
 int DIR_FstClusLO ;
 scalar_t__ FS_FAT32 ;
 int st_word (int *,int ) ;

__attribute__((used)) static void st_clust (
 FATFS* fs,
 BYTE* dir,
 DWORD cl
)
{
 st_word(dir + DIR_FstClusLO, (WORD)cl);
 if (fs->fs_type == FS_FAT32) {
  st_word(dir + DIR_FstClusHI, (WORD)(cl >> 16));
 }
}
