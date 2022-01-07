
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Pointer ;
typedef int PagetableEntry ;


 scalar_t__ INT_MAX ;
 long Max (long,int) ;
 long Min (long,scalar_t__) ;

long
tbm_calculate_entries(double maxbytes)
{
 long nbuckets;







 nbuckets = maxbytes /
  (sizeof(PagetableEntry) + sizeof(Pointer) + sizeof(Pointer));
 nbuckets = Min(nbuckets, INT_MAX - 1);
 nbuckets = Max(nbuckets, 16);

 return nbuckets;
}
