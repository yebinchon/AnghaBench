
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_fetch_add (int *,int) ;
 int x11_error_silence ;

void vo_x11_silence_xlib(int dir)
{
    atomic_fetch_add(&x11_error_silence, dir);
}
