
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cached_fstat; int sb; int no_forced_fstat; } ;
typedef TYPE_1__ php_stdio_stream_data ;


 int PHP_STDIOP_GET_FD (int,TYPE_1__*) ;
 int zend_fstat (int,int *) ;

__attribute__((used)) static int do_fstat(php_stdio_stream_data *d, int force)
{
 if (!d->cached_fstat || (force && !d->no_forced_fstat)) {
  int fd;
  int r;

  PHP_STDIOP_GET_FD(fd, d);
  r = zend_fstat(fd, &d->sb);
  d->cached_fstat = r == 0;

  return r;
 }
 return 0;
}
