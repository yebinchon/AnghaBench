
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int dsa_release_in_place (int ) ;

void
dsa_on_dsm_detach_release_in_place(dsm_segment *segment, Datum place)
{
 dsa_release_in_place(DatumGetPointer(place));
}
