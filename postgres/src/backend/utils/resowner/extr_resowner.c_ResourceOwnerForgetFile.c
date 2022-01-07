
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int filearr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int File ;


 int ERROR ;
 int FileGetDatum (int ) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetFile(ResourceOwner owner, File file)
{
 if (!ResourceArrayRemove(&(owner->filearr), FileGetDatum(file)))
  elog(ERROR, "temporary file %d is not owned by resource owner %s",
    file, owner->name);
}
