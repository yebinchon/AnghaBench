
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;


 int WriteInt (int *,size_t) ;
 int _WriteBuf (int *,char const*,size_t) ;

__attribute__((used)) static void
_CustomWriteFunc(ArchiveHandle *AH, const char *buf, size_t len)
{

 if (len > 0)
 {
  WriteInt(AH, len);
  _WriteBuf(AH, buf, len);
 }
 return;
}
