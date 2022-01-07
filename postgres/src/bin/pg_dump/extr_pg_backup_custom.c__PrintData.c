
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int compression; } ;
typedef TYPE_1__ ArchiveHandle ;


 int ReadDataFromArchive (TYPE_1__*,int ,int ) ;
 int _CustomReadFunc ;

__attribute__((used)) static void
_PrintData(ArchiveHandle *AH)
{
 ReadDataFromArchive(AH, AH->compression, _CustomReadFunc);
}
