
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int procfile ;
typedef int DICTIONARY ;


 int DICTIONARY_FLAG_SINGLE_THREADED ;
 int PROCFILE_FLAG_DEFAULT ;
 int collect_first_zram_metrics ;
 int collect_zram_metrics ;
 int * dictionary_create (int ) ;
 int dictionary_get_all_name_value (int *,int ,int *) ;
 int error (char*) ;
 int init_devices (int *,unsigned int,int) ;
 int procfile_close (int *) ;
 int * procfile_open (char*,char*,int ) ;
 int * procfile_readall (int *) ;
 int try_get_zram_major_number (int *) ;
 scalar_t__ unlikely (int) ;

int do_sys_block_zram(int update_every, usec_t dt) {
    (void)dt;
    static procfile *ff = ((void*)0);
    static DICTIONARY *devices = ((void*)0);
    static int initialized = 0;
    static int device_count = 0;
    int zram_id = -1;
    if (unlikely(!initialized))
    {
        initialized = 1;
        ff = procfile_open("/proc/devices", " \t:", PROCFILE_FLAG_DEFAULT);
        if (ff == ((void*)0))
        {
            error("Cannot read /proc/devices");
            return 1;
        }
        ff = procfile_readall(ff);
        if (!ff)
            return 1;
        zram_id = try_get_zram_major_number(ff);
        if (zram_id == -1)
        {
            if (ff != ((void*)0))
                procfile_close(ff);
            return 1;
        }
        procfile_close(ff);

        devices = dictionary_create(DICTIONARY_FLAG_SINGLE_THREADED);
        device_count = init_devices(devices, (unsigned int)zram_id, update_every);
        if (device_count < 1)
            return 1;
        dictionary_get_all_name_value(devices, collect_first_zram_metrics, devices);
    }
    else
    {
        if (unlikely(device_count < 1))
            return 1;
        dictionary_get_all_name_value(devices, collect_zram_metrics, devices);
    }
    return 0;
}
