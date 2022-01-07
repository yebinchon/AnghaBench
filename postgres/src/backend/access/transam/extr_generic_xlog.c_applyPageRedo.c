
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offset ;
typedef int length ;
typedef int Size ;
typedef int* Page ;
typedef int OffsetNumber ;


 int memcpy (int*,char const*,int) ;

__attribute__((used)) static void
applyPageRedo(Page page, const char *delta, Size deltaSize)
{
 const char *ptr = delta;
 const char *end = delta + deltaSize;

 while (ptr < end)
 {
  OffsetNumber offset,
     length;

  memcpy(&offset, ptr, sizeof(offset));
  ptr += sizeof(offset);
  memcpy(&length, ptr, sizeof(length));
  ptr += sizeof(length);

  memcpy(page + offset, ptr, length);

  ptr += length;
 }
}
