
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int CLOCK_REALTIME ;
 int now_sec (int ) ;

inline time_t now_realtime_sec(void) {
    return now_sec(CLOCK_REALTIME);
}
