
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udd_send_remotewakeup () ;

inline void udc_remotewakeup(void) { udd_send_remotewakeup(); }
