
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ temp_fd ;

__attribute__((used)) static void exit_cleanup(void)
{
 if (temp_fd >= 0) {
  close(temp_fd);
 }
}
