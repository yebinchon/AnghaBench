
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int LOG_INFO ;
 int blog (int ,char*) ;
 scalar_t__ libvlc ;
 scalar_t__ libvlc_clock_ () ;
 scalar_t__ libvlc_new_ (int ,int ) ;
 unsigned long long time_start ;

bool load_libvlc(void)
{
 if (libvlc)
  return 1;

 libvlc = libvlc_new_(0, 0);
 if (!libvlc) {
  blog(LOG_INFO, "Couldn't create libvlc instance");
  return 0;
 }

 time_start = (uint64_t)libvlc_clock_() * 1000ULL;
 return 1;
}
