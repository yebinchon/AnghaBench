
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

void* platform_print_deprecation_note( const char *msg, const char *time_frame)
{
  printf( "Warning, deprecated API! %s. It will be removed %s. See documentation for details.\n", msg, time_frame );
}
