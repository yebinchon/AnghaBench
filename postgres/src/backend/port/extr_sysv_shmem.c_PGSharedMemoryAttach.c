
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct shmid_ds {scalar_t__ shm_nattch; } ;
struct TYPE_3__ {scalar_t__ magic; scalar_t__ device; scalar_t__ inode; } ;
typedef TYPE_1__ PGShmemHeader ;
typedef int IpcMemoryState ;
typedef int IpcMemoryId ;


 int DataDir ;
 scalar_t__ EACCES ;
 scalar_t__ EIDRM ;
 scalar_t__ EINVAL ;
 int IPC_STAT ;
 scalar_t__ PGShmemMagic ;
 int PG_SHMAT_FLAGS ;
 int SHMSTATE_ANALYSIS_FAILURE ;
 int SHMSTATE_ATTACHED ;
 int SHMSTATE_ENOENT ;
 int SHMSTATE_FOREIGN ;
 int SHMSTATE_UNATTACHED ;
 scalar_t__ errno ;
 scalar_t__ shmat (int ,void*,int ) ;
 scalar_t__ shmctl (int ,int ,struct shmid_ds*) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static IpcMemoryState
PGSharedMemoryAttach(IpcMemoryId shmId,
      void *attachAt,
      PGShmemHeader **addr)
{
 struct shmid_ds shmStat;
 struct stat statbuf;
 PGShmemHeader *hdr;

 *addr = ((void*)0);




 if (shmctl(shmId, IPC_STAT, &shmStat) < 0)
 {





  if (errno == EINVAL)
   return SHMSTATE_ENOENT;






  if (errno == EACCES)
   return SHMSTATE_FOREIGN;
  return SHMSTATE_ANALYSIS_FAILURE;
 }
 if (stat(DataDir, &statbuf) < 0)
  return SHMSTATE_ANALYSIS_FAILURE;

 hdr = (PGShmemHeader *) shmat(shmId, attachAt, PG_SHMAT_FLAGS);
 if (hdr == (PGShmemHeader *) -1)
 {
  if (errno == EINVAL)
   return SHMSTATE_ENOENT;
  if (errno == EACCES)
   return SHMSTATE_FOREIGN;





  return SHMSTATE_ANALYSIS_FAILURE;
 }
 *addr = hdr;

 if (hdr->magic != PGShmemMagic ||
  hdr->device != statbuf.st_dev ||
  hdr->inode != statbuf.st_ino)
 {




  return SHMSTATE_FOREIGN;
 }






 return shmStat.shm_nattch == 0 ? SHMSTATE_UNATTACHED : SHMSTATE_ATTACHED;
}
