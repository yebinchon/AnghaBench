
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int dir; int file; } ;
struct TYPE_6__ {int kind; TYPE_1__ desc; } ;
typedef TYPE_2__ AllocateDesc ;






 int ERROR ;
 TYPE_2__* allocatedDescs ;
 int close (int ) ;
 int closedir (int ) ;
 int elog (int ,char*) ;
 int fclose (int ) ;
 size_t numAllocatedDescs ;
 int pclose (int ) ;

__attribute__((used)) static int
FreeDesc(AllocateDesc *desc)
{
 int result;


 switch (desc->kind)
 {
  case 130:
   result = fclose(desc->desc.file);
   break;
  case 129:
   result = pclose(desc->desc.file);
   break;
  case 131:
   result = closedir(desc->desc.dir);
   break;
  case 128:
   result = close(desc->desc.fd);
   break;
  default:
   elog(ERROR, "AllocateDesc kind not recognized");
   result = 0;
   break;
 }


 numAllocatedDescs--;
 *desc = allocatedDescs[numAllocatedDescs];

 return result;
}
