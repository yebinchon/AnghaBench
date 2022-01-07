
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* Dir; TYPE_1__* shared; } ;
struct TYPE_6__ {int num_slots; int* page_number; scalar_t__* page_status; int ControlLock; int * page_dirty; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int DEBUG2 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 int SLRU_PAGES_PER_SEGMENT ;
 scalar_t__ SLRU_PAGE_EMPTY ;
 scalar_t__ SLRU_PAGE_VALID ;
 int SimpleLruWaitIO (TYPE_2__*,int) ;
 int SlruInternalWritePage (TYPE_2__*,int,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int unlink (char*) ;

void
SlruDeleteSegment(SlruCtl ctl, int segno)
{
 SlruShared shared = ctl->shared;
 int slotno;
 char path[MAXPGPATH];
 bool did_write;


 LWLockAcquire(shared->ControlLock, LW_EXCLUSIVE);
restart:
 did_write = 0;
 for (slotno = 0; slotno < shared->num_slots; slotno++)
 {
  int pagesegno = shared->page_number[slotno] / SLRU_PAGES_PER_SEGMENT;

  if (shared->page_status[slotno] == SLRU_PAGE_EMPTY)
   continue;


  if (pagesegno != segno)
   continue;


  if (shared->page_status[slotno] == SLRU_PAGE_VALID &&
   !shared->page_dirty[slotno])
  {
   shared->page_status[slotno] = SLRU_PAGE_EMPTY;
   continue;
  }


  if (shared->page_status[slotno] == SLRU_PAGE_VALID)
   SlruInternalWritePage(ctl, slotno, ((void*)0));
  else
   SimpleLruWaitIO(ctl, slotno);

  did_write = 1;
 }





 if (did_write)
  goto restart;

 snprintf(path, MAXPGPATH, "%s/%04X", ctl->Dir, segno);
 ereport(DEBUG2,
   (errmsg("removing file \"%s\"", path)));
 unlink(path);

 LWLockRelease(shared->ControlLock);
}
