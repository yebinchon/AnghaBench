
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 int usleep (int) ;

void msleep(int millis) {



  usleep(millis * 1000);

}
