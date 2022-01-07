
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int RMagic ;


 int close (int) ;

__attribute__((used)) static void close_and_restore (const RMagic *ms, const char *name, int fd, const struct stat *sb) {
 if (fd > 0) {
  close (fd);
 }
}
