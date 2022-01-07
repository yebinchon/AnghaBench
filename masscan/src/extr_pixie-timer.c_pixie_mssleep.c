
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pixie_usleep (unsigned int) ;

void
pixie_mssleep(unsigned milliseconds)
{
    pixie_usleep(milliseconds * 1000ULL);
}
