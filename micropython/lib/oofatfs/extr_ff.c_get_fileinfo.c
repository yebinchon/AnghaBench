
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef size_t UINT ;
struct TYPE_8__ {TYPE_3__* fs; } ;
struct TYPE_11__ {scalar_t__ sect; int blk_ofs; scalar_t__* dir; TYPE_1__ obj; } ;
struct TYPE_10__ {scalar_t__ fs_type; scalar_t__* lfnbuf; int dirbuf; } ;
struct TYPE_9__ {char* fname; char* altname; int fattrib; void* fdate; void* ftime; int fsize; } ;
typedef char TCHAR ;
typedef TYPE_2__ FILINFO ;
typedef TYPE_3__ FATFS ;
typedef int DWORD ;
typedef TYPE_4__ DIR ;
typedef int BYTE ;


 int CODEPAGE ;
 void* DDEM ;
 size_t DIR_Attr ;
 int DIR_FileSize ;
 int DIR_ModTime ;
 size_t DIR_NTres ;
 size_t FF_LFN_BUF ;
 size_t FF_SFN_BUF ;
 scalar_t__ FS_EXFAT ;
 scalar_t__ IsSurrogate (scalar_t__) ;
 scalar_t__ IsUpper (scalar_t__) ;
 int NS_BODY ;
 int NS_EXT ;
 scalar_t__ RDDEM ;
 scalar_t__ dbc_1st (int) ;
 scalar_t__ dbc_2nd (scalar_t__) ;
 scalar_t__ ff_oem2uni (scalar_t__,int ) ;
 int get_xfileinfo (int ,TYPE_2__*) ;
 int ld_dword (int*) ;
 void* ld_word (int*) ;
 scalar_t__ put_utf (scalar_t__,char*,size_t) ;

__attribute__((used)) static void get_fileinfo (
    DIR* dp,
    FILINFO* fno
)
{
    UINT si, di;





    TCHAR c;



    fno->fname[0] = 0;
    if (dp->sect == 0) return;
    si = di = 0;
    while (si < 11) {
        c = (TCHAR)dp->dir[si++];
        if (c == ' ') continue;
        if (c == RDDEM) c = DDEM;
        if (si == 9) fno->fname[di++] = '.';
        fno->fname[di++] = c;
    }
    fno->fname[di] = 0;


    fno->fattrib = dp->dir[DIR_Attr];
    fno->fsize = ld_dword(dp->dir + DIR_FileSize);
    fno->ftime = ld_word(dp->dir + DIR_ModTime + 0);
    fno->fdate = ld_word(dp->dir + DIR_ModTime + 2);
}
