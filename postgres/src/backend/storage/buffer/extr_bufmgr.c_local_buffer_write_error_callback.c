
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockNum; int forkNum; int rnode; } ;
struct TYPE_4__ {TYPE_1__ tag; } ;
typedef TYPE_2__ BufferDesc ;


 int MyBackendId ;
 int errcontext (char*,int ,char*) ;
 int pfree (char*) ;
 char* relpathbackend (int ,int ,int ) ;

__attribute__((used)) static void
local_buffer_write_error_callback(void *arg)
{
 BufferDesc *bufHdr = (BufferDesc *) arg;

 if (bufHdr != ((void*)0))
 {
  char *path = relpathbackend(bufHdr->tag.rnode, MyBackendId,
            bufHdr->tag.forkNum);

  errcontext("writing block %u of relation %s",
       bufHdr->tag.blockNum, path);
  pfree(path);
 }
}
