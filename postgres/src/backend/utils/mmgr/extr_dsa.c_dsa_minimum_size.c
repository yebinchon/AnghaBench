
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsa_pointer ;
typedef int dsa_area_control ;
typedef int FreePageManager ;


 size_t FPM_PAGE_SIZE ;
 size_t MAXALIGN (int) ;

size_t
dsa_minimum_size(void)
{
 size_t size;
 int pages = 0;

 size = MAXALIGN(sizeof(dsa_area_control)) +
  MAXALIGN(sizeof(FreePageManager));


 while (((size + FPM_PAGE_SIZE - 1) / FPM_PAGE_SIZE) > pages)
 {
  ++pages;
  size += sizeof(dsa_pointer);
 }

 return pages * FPM_PAGE_SIZE;
}
