
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SyncRequestType ;
typedef int FileTag ;


 int ForwardSyncRequest (int const*,int ) ;
 int RememberSyncRequest (int const*,int ) ;
 int * pendingOps ;
 int pg_usleep (long) ;

bool
RegisterSyncRequest(const FileTag *ftag, SyncRequestType type,
     bool retryOnError)
{
 bool ret;

 if (pendingOps != ((void*)0))
 {

  RememberSyncRequest(ftag, type);
  return 1;
 }

 for (;;)
 {
  ret = ForwardSyncRequest(ftag, type);





  if (ret || (!ret && !retryOnError))
   break;

  pg_usleep(10000L);
 }

 return ret;
}
