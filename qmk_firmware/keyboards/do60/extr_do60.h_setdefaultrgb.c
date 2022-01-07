
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_sethsv (int,int,int) ;

inline void setdefaultrgb(void){ rgblight_sethsv(100,100,100); }
