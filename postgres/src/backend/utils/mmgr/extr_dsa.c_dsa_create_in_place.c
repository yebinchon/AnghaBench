
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int dsa_area ;


 int DSM_HANDLE_INVALID ;
 int PointerGetDatum (void*) ;
 int * create_internal (void*,size_t,int,int ,int *) ;
 int dsa_on_dsm_detach_release_in_place ;
 int on_dsm_detach (int *,int *,int ) ;

dsa_area *
dsa_create_in_place(void *place, size_t size,
     int tranche_id, dsm_segment *segment)
{
 dsa_area *area;

 area = create_internal(place, size, tranche_id,
         DSM_HANDLE_INVALID, ((void*)0));





 if (segment != ((void*)0))
  on_dsm_detach(segment, &dsa_on_dsm_detach_release_in_place,
       PointerGetDatum(place));

 return area;
}
