
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bufptr; int nchars; int * stream; int * bufend; } ;
typedef TYPE_1__ PrintfTarget ;


 int flushbuffer (TYPE_1__*) ;

__attribute__((used)) static void
dopr_outch(int c, PrintfTarget *target)
{
 if (target->bufend != ((void*)0) && target->bufptr >= target->bufend)
 {

  if (target->stream == ((void*)0))
  {
   target->nchars++;
   return;
  }
  flushbuffer(target);
 }
 *(target->bufptr++) = c;
}
