
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef char UINT ;
struct TYPE_10__ {scalar_t__ sclust; TYPE_2__* fs; } ;
struct TYPE_12__ {int* dir; TYPE_1__ obj; } ;
struct TYPE_11__ {scalar_t__ fs_type; int wflag; } ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_2__ FATFS ;
typedef int DWORD ;
typedef TYPE_3__ DIR ;
typedef int BYTE ;


 int AM_VOL ;
 int CODEPAGE ;
 int DDEM ;
 size_t DIR_Attr ;
 size_t DIR_Name ;
 scalar_t__ DIR_READ_LABEL (TYPE_3__*) ;
 int ET_VLABEL ;
 int* ExCvt ;
 int FA_WRITE ;
 scalar_t__ FF_FS_EXFAT ;
 scalar_t__ FR_INVALID_NAME ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ IsLower (int) ;
 int LEAVE_FF (TYPE_2__*,scalar_t__) ;
 int SZDIRE ;
 int XDIR_Label ;
 size_t XDIR_NumLabel ;
 size_t XDIR_Type ;
 scalar_t__ chk_chr (char const*,int) ;
 scalar_t__ dbc_1st (int) ;
 scalar_t__ dbc_2nd (int) ;
 scalar_t__ dir_alloc (TYPE_3__*,int) ;
 scalar_t__ dir_sdi (TYPE_3__*,int ) ;
 int ff_uni2oem (int ,int ) ;
 int ff_wtoupper (int) ;
 scalar_t__ find_volume (scalar_t__ const**,TYPE_2__**,int ) ;
 int mem_cpy (int*,int*,int) ;
 int mem_set (int*,char,int) ;
 int st_word (int*,int) ;
 scalar_t__ sync_fs (TYPE_2__*) ;
 int tchar2uni (scalar_t__ const**) ;

FRESULT f_setlabel (
 const TCHAR* label
)
{
 FRESULT res;
 DIR dj;
 FATFS *fs;
 BYTE dirvn[22];
 UINT di;
 WCHAR wc;
 static const char badchr[] = "+.,;=[]/\\\"*:<>\?|\x7F";





 res = find_volume(&label, &fs, FA_WRITE);
 if (res != FR_OK) LEAVE_FF(fs, res);
 {
  mem_set(dirvn, ' ', 11);
  di = 0;
  while ((UINT)*label >= ' ') {




   wc = (BYTE)*label++;
   if (dbc_1st((BYTE)wc)) wc = dbc_2nd((BYTE)*label) ? wc << 8 | (BYTE)*label++ : 0;
   if (IsLower(wc)) wc -= 0x20;

   if (ExCvt && wc >= 0x80) wc = ExCvt[wc - 0x80];




   if (wc == 0 || chk_chr(badchr + 0, (int)wc) || di >= (UINT)((wc >= 0x100) ? 10 : 11)) {
    LEAVE_FF(fs, FR_INVALID_NAME);
   }
   if (wc >= 0x100) dirvn[di++] = (BYTE)(wc >> 8);
   dirvn[di++] = (BYTE)wc;
  }
  if (dirvn[0] == DDEM) LEAVE_FF(fs, FR_INVALID_NAME);
  while (di && dirvn[di - 1] == ' ') di--;
 }


 dj.obj.fs = fs; dj.obj.sclust = 0;
 res = dir_sdi(&dj, 0);
 if (res == FR_OK) {
  res = DIR_READ_LABEL(&dj);
  if (res == FR_OK) {
   if (FF_FS_EXFAT && fs->fs_type == FS_EXFAT) {
    dj.dir[XDIR_NumLabel] = (BYTE)di;
    mem_cpy(dj.dir + XDIR_Label, dirvn, 22);
   } else {
    if (di != 0) {
     mem_cpy(dj.dir, dirvn, 11);
    } else {
     dj.dir[DIR_Name] = DDEM;
    }
   }
   fs->wflag = 1;
   res = sync_fs(fs);
  } else {
   if (res == FR_NO_FILE) {
    res = FR_OK;
    if (di != 0) {
     res = dir_alloc(&dj, 1);
     if (res == FR_OK) {
      mem_set(dj.dir, 0, SZDIRE);
      if (FF_FS_EXFAT && fs->fs_type == FS_EXFAT) {
       dj.dir[XDIR_Type] = ET_VLABEL;
       dj.dir[XDIR_NumLabel] = (BYTE)di;
       mem_cpy(dj.dir + XDIR_Label, dirvn, 22);
      } else {
       dj.dir[DIR_Attr] = AM_VOL;
       mem_cpy(dj.dir, dirvn, 11);
      }
      fs->wflag = 1;
      res = sync_fs(fs);
     }
    }
   }
  }
 }

 LEAVE_FF(fs, res);
}
