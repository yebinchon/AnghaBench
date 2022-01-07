
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int CLOCK_REALTIME ;
 int now_usec (int ) ;

inline usec_t now_realtime_usec(void) {
    return now_usec(CLOCK_REALTIME);
}
