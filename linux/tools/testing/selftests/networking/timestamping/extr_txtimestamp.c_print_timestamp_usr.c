
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int __print_timestamp (char*,int *,int ,int ) ;
 scalar_t__ clock_gettime (int ,int *) ;
 int errno ;
 int error (int,int ,char*) ;
 int ts_usr ;

__attribute__((used)) static void print_timestamp_usr(void)
{
 if (clock_gettime(CLOCK_REALTIME, &ts_usr))
  error(1, errno, "clock_gettime");

 __print_timestamp("  USR", &ts_usr, 0, 0);
}
