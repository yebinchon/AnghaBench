
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double av_gettime () ;

__attribute__((used)) static double ff_external_clock(void *opaque)
{
 (void)opaque;

 return av_gettime() / 1000000.0;
}
