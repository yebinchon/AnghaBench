
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; int buffer; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef int Buffer ;


 int Assert (int ) ;
 TYPE_1__* ReservedRefCountEntry ;

__attribute__((used)) static PrivateRefCountEntry *
NewPrivateRefCountEntry(Buffer buffer)
{
 PrivateRefCountEntry *res;


 Assert(ReservedRefCountEntry != ((void*)0));


 res = ReservedRefCountEntry;
 ReservedRefCountEntry = ((void*)0);


 res->buffer = buffer;
 res->refcount = 0;

 return res;
}
