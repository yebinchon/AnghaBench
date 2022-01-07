
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ArchiveHandle ;


 int EndRestoreBlob (int *,scalar_t__) ;
 int EndRestoreBlobs (int *) ;
 scalar_t__ ReadInt (int *) ;
 int StartRestoreBlob (int *,scalar_t__,int) ;
 int StartRestoreBlobs (int *) ;
 int _PrintData (int *) ;

__attribute__((used)) static void
_LoadBlobs(ArchiveHandle *AH, bool drop)
{
 Oid oid;

 StartRestoreBlobs(AH);

 oid = ReadInt(AH);
 while (oid != 0)
 {
  StartRestoreBlob(AH, oid, drop);
  _PrintData(AH);
  EndRestoreBlob(AH, oid);
  oid = ReadInt(AH);
 }

 EndRestoreBlobs(AH);
}
