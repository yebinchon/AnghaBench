
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int buffer ;
struct TYPE_4__ {char* bufstart; char* bufptr; char* bufend; int nchars; int failed; int * stream; } ;
typedef TYPE_1__ PrintfTarget ;
typedef int FILE ;


 int EINVAL ;
 int dopr (TYPE_1__*,char const*,int ) ;
 int errno ;
 int flushbuffer (TYPE_1__*) ;

int
pg_vfprintf(FILE *stream, const char *fmt, va_list args)
{
 PrintfTarget target;
 char buffer[1024];

 if (stream == ((void*)0))
 {
  errno = EINVAL;
  return -1;
 }
 target.bufstart = target.bufptr = buffer;
 target.bufend = buffer + sizeof(buffer);
 target.stream = stream;
 target.nchars = 0;
 target.failed = 0;
 dopr(&target, fmt, args);

 flushbuffer(&target);
 return target.failed ? -1 : target.nchars;
}
