
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* ReopenPtr ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
setupRestoreWorker(Archive *AHX)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 AH->ReopenPtr(AH);
}
