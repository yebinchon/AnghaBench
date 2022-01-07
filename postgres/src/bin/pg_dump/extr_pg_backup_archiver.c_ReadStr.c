
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ReadBufPtr ) (TYPE_1__*,void*,int) ;} ;
typedef TYPE_1__ ArchiveHandle ;


 int ReadInt (TYPE_1__*) ;
 scalar_t__ pg_malloc (int) ;
 int stub1 (TYPE_1__*,void*,int) ;

char *
ReadStr(ArchiveHandle *AH)
{
 char *buf;
 int l;

 l = ReadInt(AH);
 if (l < 0)
  buf = ((void*)0);
 else
 {
  buf = (char *) pg_malloc(l + 1);
  AH->ReadBufPtr(AH, (void *) buf, l);

  buf[l] = '\0';
 }

 return buf;
}
