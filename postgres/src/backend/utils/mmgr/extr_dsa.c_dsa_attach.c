
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int dsa_handle ;
typedef int dsa_area ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int PointerGetDatum (int ) ;
 int * attach_internal (int ,int *,int ) ;
 int dsa_on_dsm_detach_release_in_place ;
 int * dsm_attach (int ) ;
 int dsm_segment_address (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int on_dsm_detach (int *,int *,int ) ;

dsa_area *
dsa_attach(dsa_handle handle)
{
 dsm_segment *segment;
 dsa_area *area;





 segment = dsm_attach(handle);
 if (segment == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not attach to dynamic shared area")));

 area = attach_internal(dsm_segment_address(segment), segment, handle);


 on_dsm_detach(segment, &dsa_on_dsm_detach_release_in_place,
      PointerGetDatum(dsm_segment_address(segment)));

 return area;
}
