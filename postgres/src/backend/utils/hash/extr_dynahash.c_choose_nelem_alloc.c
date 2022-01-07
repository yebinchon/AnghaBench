
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int HASHELEMENT ;


 int MAXALIGN (int) ;

__attribute__((used)) static int
choose_nelem_alloc(Size entrysize)
{
 int nelem_alloc;
 Size elementSize;
 Size allocSize;



 elementSize = MAXALIGN(sizeof(HASHELEMENT)) + MAXALIGN(entrysize);
 allocSize = 32 * 4;
 do
 {
  allocSize <<= 1;
  nelem_alloc = allocSize / elementSize;
 } while (nelem_alloc < 32);

 return nelem_alloc;
}
