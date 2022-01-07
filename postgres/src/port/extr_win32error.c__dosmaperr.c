
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long winerr; int doserr; } ;


 int DEBUG5 ;
 int EINVAL ;
 int LOG ;
 TYPE_1__* doserrors ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,unsigned long,...) ;
 int errno ;
 int fprintf (int ,char*,unsigned long,...) ;
 int lengthof (TYPE_1__*) ;
 int stderr ;

void
_dosmaperr(unsigned long e)
{
 int i;

 if (e == 0)
 {
  errno = 0;
  return;
 }

 for (i = 0; i < lengthof(doserrors); i++)
 {
  if (doserrors[i].winerr == e)
  {
   int doserr = doserrors[i].doserr;


   ereport(DEBUG5,
     (errmsg_internal("mapped win32 error code %lu to %d",
          e, doserr)));



   errno = doserr;
   return;
  }
 }


 ereport(LOG,
   (errmsg_internal("unrecognized win32 error code: %lu",
        e)));




 errno = EINVAL;
 return;
}
