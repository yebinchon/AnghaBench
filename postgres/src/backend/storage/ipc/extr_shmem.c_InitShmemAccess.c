
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int totalsize; } ;
typedef TYPE_1__ PGShmemHeader ;


 void* ShmemBase ;
 char* ShmemEnd ;
 TYPE_1__* ShmemSegHdr ;

void
InitShmemAccess(void *seghdr)
{
 PGShmemHeader *shmhdr = (PGShmemHeader *) seghdr;

 ShmemSegHdr = shmhdr;
 ShmemBase = (void *) shmhdr;
 ShmemEnd = (char *) ShmemBase + shmhdr->totalsize;
}
