
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ArchiveHandle ;


 scalar_t__ ReadInt (int *) ;
 int _skipData (int *) ;

__attribute__((used)) static void
_skipBlobs(ArchiveHandle *AH)
{
 Oid oid;

 oid = ReadInt(AH);
 while (oid != 0)
 {
  _skipData(AH);
  oid = ReadInt(AH);
 }
}
