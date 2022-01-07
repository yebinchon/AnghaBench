
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;


 int ahwrite (void const*,int,size_t,int *) ;

__attribute__((used)) static void
_WriteData(ArchiveHandle *AH, const void *data, size_t dLen)
{

 ahwrite(data, 1, dLen, AH);
 return;
}
