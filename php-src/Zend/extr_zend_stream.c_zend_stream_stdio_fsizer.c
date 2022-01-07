
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t st_size; int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
typedef int FILE ;


 int S_ISREG (int ) ;
 int fileno (int *) ;
 scalar_t__ zend_fstat (int ,TYPE_1__*) ;

__attribute__((used)) static size_t zend_stream_stdio_fsizer(void *handle)
{
 zend_stat_t buf;
 if (handle && zend_fstat(fileno((FILE*)handle), &buf) == 0) {





  return buf.st_size;
 }
 return -1;
}
