
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subid; } ;
typedef scalar_t__ SubTransactionId ;
typedef TYPE_1__ LargeObjectDesc ;


 TYPE_1__** cookies ;
 int cookies_size ;
 int deleteLOfd (int) ;
 int * fscxt ;
 int inv_close (TYPE_1__*) ;

void
AtEOSubXact_LargeObject(bool isCommit, SubTransactionId mySubid,
      SubTransactionId parentSubid)
{
 int i;

 if (fscxt == ((void*)0))
  return;

 for (i = 0; i < cookies_size; i++)
 {
  LargeObjectDesc *lo = cookies[i];

  if (lo != ((void*)0) && lo->subid == mySubid)
  {
   if (isCommit)
    lo->subid = parentSubid;
   else
   {




    deleteLOfd(i);
    inv_close(lo);
   }
  }
 }
}
