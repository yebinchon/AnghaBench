
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_5__ {scalar_t__ n_errors; } ;
struct TYPE_6__ {TYPE_1__ public; int * connection; } ;
typedef TYPE_2__ ArchiveHandle ;


 int Assert (int ) ;
 int restore_toc_entry (TYPE_2__*,int *,int) ;

int
parallel_restore(ArchiveHandle *AH, TocEntry *te)
{
 int status;

 Assert(AH->connection != ((void*)0));


 AH->public.n_errors = 0;


 status = restore_toc_entry(AH, te, 1);

 return status;
}
