
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int dsa_area ;


 int DSM_HANDLE_INVALID ;
 int PointerGetDatum (void*) ;
 int * attach_internal (void*,int *,int ) ;
 int dsa_on_dsm_detach_release_in_place ;
 int on_dsm_detach (int *,int *,int ) ;

dsa_area *
dsa_attach_in_place(void *place, dsm_segment *segment)
{
 dsa_area *area;

 area = attach_internal(place, ((void*)0), DSM_HANDLE_INVALID);





 if (segment != ((void*)0))
  on_dsm_detach(segment, &dsa_on_dsm_detach_release_in_place,
       PointerGetDatum(place));

 return area;
}
