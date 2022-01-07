
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_rdev; } ;
struct dirent {int d_name; } ;
typedef int procfile ;
struct TYPE_4__ {int * file; } ;
typedef TYPE_1__ ZRAM_DEVICE ;
typedef int DIR ;
typedef int DICTIONARY ;


 int FILENAME_MAX ;
 int PROCFILE_FLAG_DEFAULT ;
 int closedir (int *) ;
 int dictionary_set (int *,int ,TYPE_1__*,int) ;
 int errno ;
 int error (char*,char*,char*) ;
 int info (char*,char*) ;
 int init_rrd (int ,TYPE_1__*,int) ;
 unsigned int major (int ) ;
 int * opendir (char*) ;
 int * procfile_open (char*,char*,int ) ;
 struct dirent* readdir (int *) ;
 int snprintfz (char*,int ,char*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strerror (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int init_devices(DICTIONARY *devices, unsigned int zram_id, int update_every) {
    int count = 0;
    DIR *dir = opendir("/dev");
    struct dirent *de;
    struct stat st;
    char filename[FILENAME_MAX + 1];
    procfile *ff = ((void*)0);
    ZRAM_DEVICE device;

    if (unlikely(!dir))
        return 0;
    while ((de = readdir(dir)))
    {
        snprintfz(filename, FILENAME_MAX, "/dev/%s", de->d_name);
        if (unlikely(stat(filename, &st) != 0))
        {
            error("ZRAM : Unable to stat %s: %s", filename, strerror(errno));
            continue;
        }
        if (major(st.st_rdev) == zram_id)
        {
            info("ZRAM : Found device %s", filename);
            snprintfz(filename, FILENAME_MAX, "/sys/block/%s/mm_stat", de->d_name);
            ff = procfile_open(filename, " \t:", PROCFILE_FLAG_DEFAULT);
            if (ff == ((void*)0))
            {
                error("ZRAM : Failed to open %s: %s", filename, strerror(errno));
                continue;
            }
            device.file = ff;
            init_rrd(de->d_name, &device, update_every);
            dictionary_set(devices, de->d_name, &device, sizeof(ZRAM_DEVICE));
            count++;
        }
    }
    closedir(dir);
    return count;
}
