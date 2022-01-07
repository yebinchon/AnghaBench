
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int d3d_do_load ;
 int d3d_load_once ;
 int pthread_once (int *,int ) ;

void d3d_load_dlls(void)
{
    pthread_once(&d3d_load_once, d3d_do_load);
}
