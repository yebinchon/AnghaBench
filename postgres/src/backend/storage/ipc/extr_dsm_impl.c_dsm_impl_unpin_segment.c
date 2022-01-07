
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_handle ;



 int DUPLICATE_CLOSE_SOURCE ;
 int DuplicateHandle (int ,void*,int *,int *,int ,int ,int ) ;
 int ERROR ;
 int FALSE ;
 int GetLastError () ;
 int PostmasterHandle ;
 char* SEGMENT_NAME_PREFIX ;
 int _dosmaperr (int ) ;
 int dynamic_shared_memory_type ;
 int ereport (int ,int ) ;
 int errcode_for_dynamic_shared_memory () ;
 int errmsg (char*,char*) ;
 int snprintf (char*,int,char*,char*,int) ;

void
dsm_impl_unpin_segment(dsm_handle handle, void **impl_private)
{
 switch (dynamic_shared_memory_type)
 {
  default:
   break;
 }
}
