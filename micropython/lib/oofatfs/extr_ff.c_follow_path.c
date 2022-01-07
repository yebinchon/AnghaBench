
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char UINT ;
struct TYPE_15__ {int c_size; int stat; int attr; scalar_t__ sclust; int c_ofs; scalar_t__ objsize; scalar_t__ c_scl; scalar_t__ n_frag; TYPE_1__* fs; } ;
struct TYPE_14__ {int* fn; int dptr; TYPE_4__ obj; int blk_ofs; } ;
struct TYPE_13__ {scalar_t__ fs_type; int cdc_size; int* dirbuf; scalar_t__ win; int cdc_ofs; scalar_t__ cdc_scl; scalar_t__ cdir; } ;
typedef char TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef TYPE_2__ DIR ;
typedef int BYTE ;


 int AM_DIR ;
 scalar_t__ FF_FS_RPATH ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_NO_PATH ;
 scalar_t__ FR_OK ;
 scalar_t__ FS_EXFAT ;
 size_t NSFLAG ;
 int NS_DOT ;
 int NS_LAST ;
 void* NS_NONAME ;
 int SS (TYPE_1__*) ;
 int XDIR_FileSize ;
 size_t XDIR_GenFlags ;
 scalar_t__ create_name (TYPE_2__*,char const**) ;
 scalar_t__ dir_find (TYPE_2__*) ;
 scalar_t__ dir_sdi (TYPE_2__*,int ) ;
 int init_alloc_info (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ ld_clust (TYPE_1__*,scalar_t__) ;
 scalar_t__ ld_dword (int*) ;
 scalar_t__ load_obj_xdir (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static FRESULT follow_path (
    DIR* dp,
    const TCHAR* path
)
{
    FRESULT res;
    BYTE ns;
    FATFS *fs = dp->obj.fs;







    {
        while (*path == '/' || *path == '\\') path++;
        dp->obj.sclust = 0;
    }
    if ((UINT)*path < ' ') {
        dp->fn[NSFLAG] = NS_NONAME;
        res = dir_sdi(dp, 0);

    } else {
        for (;;) {
            res = create_name(dp, &path);
            if (res != FR_OK) break;
            res = dir_find(dp);
            ns = dp->fn[NSFLAG];
            if (res != FR_OK) {
                if (res == FR_NO_FILE) {
                    if (FF_FS_RPATH && (ns & NS_DOT)) {
                        if (!(ns & NS_LAST)) continue;
                        dp->fn[NSFLAG] = NS_NONAME;
                        res = FR_OK;
                    } else {
                        if (!(ns & NS_LAST)) res = FR_NO_PATH;
                    }
                }
                break;
            }
            if (ns & NS_LAST) break;

            if (!(dp->obj.attr & AM_DIR)) {
                res = FR_NO_PATH; break;
            }
            {
                dp->obj.sclust = ld_clust(fs, fs->win + dp->dptr % SS(fs));
            }
        }
    }

    return res;
}
