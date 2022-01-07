
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int winsect; int csize; int drv; int * win; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ FR_DISK_ERR ;
 scalar_t__ FR_OK ;
 int MAX_MALLOC ;
 scalar_t__ RES_OK ;
 int SS (TYPE_1__*) ;
 int clst2sect (TYPE_1__*,int) ;
 scalar_t__ disk_write (int ,int *,int,int) ;
 int * ff_memalloc (int) ;
 int ff_memfree (int *) ;
 int mem_set (int *,int ,int) ;
 scalar_t__ sync_window (TYPE_1__*) ;

__attribute__((used)) static FRESULT dir_clear (
    FATFS *fs,
    DWORD clst
)
{
    DWORD sect;
    UINT n, szb;
    BYTE *ibuf;


    if (sync_window(fs) != FR_OK) return FR_DISK_ERR;
    sect = clst2sect(fs, clst);
    fs->winsect = sect;
    mem_set(fs->win, 0, sizeof fs->win);
    {
        ibuf = fs->win; szb = 1;
        for (n = 0; n < fs->csize && disk_write(fs->drv, ibuf, sect + n, szb) == RES_OK; n += szb) ;
    }
    return (n == fs->csize) ? FR_OK : FR_DISK_ERR;
}
