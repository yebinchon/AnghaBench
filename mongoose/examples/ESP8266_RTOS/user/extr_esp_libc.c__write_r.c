
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;
typedef size_t _ssize_t ;


 int os_putc (char) ;

_ssize_t _write_r(struct _reent *r, int fd, void *buf, size_t len) {
  if (fd == 1 || fd == 2) {
    size_t i;
    for (i = 0; i < len; i++) {
      os_putc(((char *) buf)[i]);
    }
    return len;
  }
  return -1;
}
