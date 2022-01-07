
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XSHM_DATA (void*) ;
 int bfree (int ) ;
 int data ;
 int xshm_capture_stop (int ) ;

__attribute__((used)) static void xshm_destroy(void *vptr)
{
 XSHM_DATA(vptr);

 if (!data)
  return;

 xshm_capture_stop(data);

 bfree(data);
}
