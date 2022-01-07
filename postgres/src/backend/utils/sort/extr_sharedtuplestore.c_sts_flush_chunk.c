
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * data; } ;
struct TYPE_9__ {size_t participant; TYPE_2__* sts; TYPE_5__* write_chunk; int * write_pointer; int write_file; } ;
struct TYPE_8__ {TYPE_1__* participants; } ;
struct TYPE_7__ {size_t npages; } ;
typedef TYPE_3__ SharedTuplestoreAccessor ;


 size_t BLCKSZ ;
 size_t BufFileWrite (int ,TYPE_5__*,size_t) ;
 int ERROR ;
 size_t STS_CHUNK_PAGES ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 int memset (TYPE_5__*,int ,size_t) ;

__attribute__((used)) static void
sts_flush_chunk(SharedTuplestoreAccessor *accessor)
{
 size_t size;
 size_t written;

 size = STS_CHUNK_PAGES * BLCKSZ;
 written = BufFileWrite(accessor->write_file, accessor->write_chunk, size);
 if (written != size)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write to temporary file: %m")));
 memset(accessor->write_chunk, 0, size);
 accessor->write_pointer = &accessor->write_chunk->data[0];
 accessor->sts->participants[accessor->participant].npages +=
  STS_CHUNK_PAGES;
}
