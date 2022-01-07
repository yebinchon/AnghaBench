
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TocEntry ;
typedef int ArchiveHandle ;


 int WriteInt (int *,int ) ;

__attribute__((used)) static void
_EndBlobs(ArchiveHandle *AH, TocEntry *te)
{

 WriteInt(AH, 0);
}
