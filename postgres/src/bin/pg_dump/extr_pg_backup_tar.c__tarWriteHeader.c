
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tarFH; int fileLen; int targetFile; } ;
typedef TYPE_1__ TAR_MEMBER ;


 int WRITE_ERROR_EXIT ;
 int fwrite (char*,int,int,int ) ;
 int tarCreateHeader (char*,int ,int *,int ,int,int,int,int ) ;
 int time (int *) ;

__attribute__((used)) static void
_tarWriteHeader(TAR_MEMBER *th)
{
 char h[512];

 tarCreateHeader(h, th->targetFile, ((void*)0), th->fileLen,
     0600, 04000, 02000, time(((void*)0)));


 if (fwrite(h, 1, 512, th->tarFH) != 512)
  WRITE_ERROR_EXIT;
}
