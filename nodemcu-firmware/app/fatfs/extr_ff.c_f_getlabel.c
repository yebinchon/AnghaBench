
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int UINT ;
struct TYPE_9__ {scalar_t__ sclust; TYPE_2__* fs; } ;
struct TYPE_11__ {int* dir; TYPE_1__ obj; } ;
struct TYPE_10__ {int fs_type; scalar_t__ win; int volbase; } ;
typedef char TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef TYPE_3__ DIR ;
typedef int BYTE ;


 int BPB_VolIDEx ;
 int BS_VolID ;
 int BS_VolID32 ;
 int CODEPAGE ;
 scalar_t__ DIR_READ_LABEL (TYPE_3__*) ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;


 scalar_t__ IsSurrogate (scalar_t__) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 int XDIR_Label ;
 size_t XDIR_NumLabel ;
 scalar_t__ dbc_1st (int ) ;
 scalar_t__ dir_sdi (TYPE_3__*,int ) ;
 scalar_t__ ff_oem2uni (scalar_t__,int ) ;
 scalar_t__ find_volume (char const**,TYPE_2__**,int ) ;
 int ld_dword (scalar_t__) ;
 scalar_t__ ld_word (int*) ;
 scalar_t__ move_window (TYPE_2__*,int ) ;
 scalar_t__ put_utf (scalar_t__,char*,int) ;

FRESULT f_getlabel (
 const TCHAR* path,
 TCHAR* label,
 DWORD* vsn
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;
 UINT si, di;
 WCHAR wc;


 res = find_volume(&path, &fs, 0);


 if (res == FR_OK && label) {
  dj.obj.fs = fs; dj.obj.sclust = 0;
  res = dir_sdi(&dj, 0);
  if (res == FR_OK) {
    res = DIR_READ_LABEL(&dj);
    if (res == FR_OK) {
    {
     si = di = 0;
     while (si < 11) {
      wc = dj.dir[si++];







      label[di++] = (TCHAR)wc;

     }
     do {
      label[di] = 0;
      if (di == 0) break;
     } while (label[--di] == ' ');
    }
   }
  }
  if (res == FR_NO_FILE) {
   label[0] = 0;
   res = FR_OK;
  }
 }


 if (res == FR_OK && vsn) {
  res = move_window(fs, fs->volbase);
  if (res == FR_OK) {
   switch (fs->fs_type) {
   case 129:
    di = BPB_VolIDEx; break;

   case 128:
    di = BS_VolID32; break;

   default:
    di = BS_VolID;
   }
   *vsn = ld_dword(fs->win + di);
  }
 }

 LEAVE_FF(fs, res);
}
