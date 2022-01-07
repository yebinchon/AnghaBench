
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_handle ;
typedef void* HANDLE ;



 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,void*,int ,void**,int ,int ,int ) ;
 int ERROR ;
 int FALSE ;
 int GetCurrentProcess () ;
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
dsm_impl_pin_segment(dsm_handle handle, void *impl_private,
      void **impl_private_pm_handle)
{
 switch (dynamic_shared_memory_type)
 {
  default:
   break;
 }
}
