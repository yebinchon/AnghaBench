
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ check_for_new_mountpoints_every ;
 int disk_mountinfo_root ;
 int mountinfo_free_all (int ) ;
 int mountinfo_read (int ) ;
 scalar_t__ now_realtime_sec () ;

__attribute__((used)) static inline void mountinfo_reload(int force) {
    static time_t last_loaded = 0;
    time_t now = now_realtime_sec();

    if(force || now - last_loaded >= check_for_new_mountpoints_every) {

        mountinfo_free_all(disk_mountinfo_root);


        disk_mountinfo_root = mountinfo_read(0);

        last_loaded = now;
    }
}
