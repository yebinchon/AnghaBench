
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bufferarr; } ;
typedef TYPE_1__* ResourceOwner ;


 int Assert (int ) ;
 int ResourceArrayEnlarge (int *) ;

void
ResourceOwnerEnlargeBuffers(ResourceOwner owner)
{

 Assert(owner != ((void*)0));
 ResourceArrayEnlarge(&(owner->bufferarr));
}
