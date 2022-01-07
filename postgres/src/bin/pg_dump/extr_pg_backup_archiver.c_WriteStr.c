
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* WriteBufPtr ) (TYPE_1__*,char const*,int) ;} ;
typedef TYPE_1__ ArchiveHandle ;


 size_t WriteInt (TYPE_1__*,int) ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,char const*,int) ;

size_t
WriteStr(ArchiveHandle *AH, const char *c)
{
 size_t res;

 if (c)
 {
  int len = strlen(c);

  res = WriteInt(AH, len);
  AH->WriteBufPtr(AH, c, len);
  res += len;
 }
 else
  res = WriteInt(AH, -1);

 return res;
}
