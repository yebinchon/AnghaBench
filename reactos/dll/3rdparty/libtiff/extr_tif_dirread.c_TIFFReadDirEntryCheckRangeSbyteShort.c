
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;


 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrRange ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryCheckRangeSbyteShort(uint16 value)
{
 if (value>0x7F)
  return(TIFFReadDirEntryErrRange);
 else
  return(TIFFReadDirEntryErrOk);
}
