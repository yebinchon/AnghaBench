
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fs_type; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 int DIR_FstClusHI ;
 int DIR_FstClusLO ;
 scalar_t__ FS_FAT32 ;
 int ld_word (int const*) ;

__attribute__((used)) static DWORD ld_clust (
 FATFS* fs,
 const BYTE* dir
)
{
 DWORD cl;

 cl = ld_word(dir + DIR_FstClusLO);
 if (fs->fs_type == FS_FAT32) {
  cl |= (DWORD)ld_word(dir + DIR_FstClusHI) << 16;
 }

 return cl;
}
