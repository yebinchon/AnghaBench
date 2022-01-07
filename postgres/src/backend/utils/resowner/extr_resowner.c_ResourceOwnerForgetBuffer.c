
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int bufferarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int Buffer ;


 int BufferGetDatum (int ) ;
 int ERROR ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetBuffer(ResourceOwner owner, Buffer buffer)
{
 if (!ResourceArrayRemove(&(owner->bufferarr), BufferGetDatum(buffer)))
  elog(ERROR, "buffer %d is not owned by resource owner %s",
    buffer, owner->name);
}
