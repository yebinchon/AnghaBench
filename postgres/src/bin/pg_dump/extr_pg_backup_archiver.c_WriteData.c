
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* WriteDataPtr ) (TYPE_1__*,void const*,size_t) ;int currToc; } ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int fatal (char*) ;
 int stub1 (TYPE_1__*,void const*,size_t) ;

void
WriteData(Archive *AHX, const void *data, size_t dLen)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 if (!AH->currToc)
  fatal("internal error -- WriteData cannot be called outside the context of a DataDumper routine");

 AH->WriteDataPtr(AH, data, dLen);

 return;
}
