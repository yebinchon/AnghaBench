
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* bufstart; char* bufptr; int nchars; int failed; int * stream; int * bufend; } ;
typedef TYPE_1__ PrintfTarget ;


 int dopr (TYPE_1__*,char const*,int ) ;

int
pg_vsprintf(char *str, const char *fmt, va_list args)
{
 PrintfTarget target;

 target.bufstart = target.bufptr = str;
 target.bufend = ((void*)0);
 target.stream = ((void*)0);
 target.nchars = 0;
 target.failed = 0;
 dopr(&target, fmt, args);
 *(target.bufptr) = '\0';
 return target.failed ? -1 : (target.bufptr - target.bufstart
         + target.nchars);
}
