
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pgoff_t ;
struct TYPE_5__ {int (* WriteBytePtr ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ArchiveHandle ;


 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;

size_t
WriteOffset(ArchiveHandle *AH, pgoff_t o, int wasSet)
{
 int off;


 AH->WriteBytePtr(AH, wasSet);


 for (off = 0; off < sizeof(pgoff_t); off++)
 {
  AH->WriteBytePtr(AH, o & 0xFF);
  o >>= 8;
 }
 return sizeof(pgoff_t) + 1;
}
