
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t participant; TYPE_2__* sts; int * write_file; int * write_chunk; } ;
struct TYPE_7__ {TYPE_1__* participants; } ;
struct TYPE_6__ {int writing; } ;
typedef TYPE_3__ SharedTuplestoreAccessor ;


 int BufFileClose (int *) ;
 int pfree (int *) ;
 int sts_flush_chunk (TYPE_3__*) ;

void
sts_end_write(SharedTuplestoreAccessor *accessor)
{
 if (accessor->write_file != ((void*)0))
 {
  sts_flush_chunk(accessor);
  BufFileClose(accessor->write_file);
  pfree(accessor->write_chunk);
  accessor->write_chunk = ((void*)0);
  accessor->write_file = ((void*)0);
  accessor->sts->participants[accessor->participant].writing = 0;
 }
}
