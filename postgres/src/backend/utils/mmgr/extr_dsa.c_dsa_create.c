
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int dsa_area ;


 int DSA_INITIAL_SEGMENT_SIZE ;
 int PointerGetDatum (int ) ;
 int * create_internal (int ,int ,int,int ,int *) ;
 int dsa_on_dsm_detach_release_in_place ;
 int * dsm_create (int ,int ) ;
 int dsm_pin_segment (int *) ;
 int dsm_segment_address (int *) ;
 int dsm_segment_handle (int *) ;
 int on_dsm_detach (int *,int *,int ) ;

dsa_area *
dsa_create(int tranche_id)
{
 dsm_segment *segment;
 dsa_area *area;





 segment = dsm_create(DSA_INITIAL_SEGMENT_SIZE, 0);







 dsm_pin_segment(segment);


 area = create_internal(dsm_segment_address(segment),
         DSA_INITIAL_SEGMENT_SIZE,
         tranche_id,
         dsm_segment_handle(segment), segment);


 on_dsm_detach(segment, &dsa_on_dsm_detach_release_in_place,
      PointerGetDatum(dsm_segment_address(segment)));

 return area;
}
