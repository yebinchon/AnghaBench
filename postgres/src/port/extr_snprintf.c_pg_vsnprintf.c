
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* bufstart; char* bufptr; char* bufend; int nchars; int failed; int * stream; } ;
typedef TYPE_1__ PrintfTarget ;


 int dopr (TYPE_1__*,char const*,int ) ;

int
pg_vsnprintf(char *str, size_t count, const char *fmt, va_list args)
{
 PrintfTarget target;
 char onebyte[1];







 if (count == 0)
 {
  str = onebyte;
  count = 1;
 }
 target.bufstart = target.bufptr = str;
 target.bufend = str + count - 1;
 target.stream = ((void*)0);
 target.nchars = 0;
 target.failed = 0;
 dopr(&target, fmt, args);
 *(target.bufptr) = '\0';
 return target.failed ? -1 : (target.bufptr - target.bufstart
         + target.nchars);
}
