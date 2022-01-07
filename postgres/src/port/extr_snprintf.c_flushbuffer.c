
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bufptr; size_t bufstart; int failed; size_t nchars; int stream; } ;
typedef TYPE_1__ PrintfTarget ;


 size_t fwrite (size_t,int,size_t,int ) ;

__attribute__((used)) static void
flushbuffer(PrintfTarget *target)
{
 size_t nc = target->bufptr - target->bufstart;





 if (!target->failed && nc > 0)
 {
  size_t written;

  written = fwrite(target->bufstart, 1, nc, target->stream);
  target->nchars += written;
  if (written != nc)
   target->failed = 1;
 }
 target->bufptr = target->bufstart;
}
