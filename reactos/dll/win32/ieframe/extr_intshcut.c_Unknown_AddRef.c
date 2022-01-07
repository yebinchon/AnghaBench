
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int refCount; } ;
typedef TYPE_1__ InternetShortcut ;


 int InterlockedIncrement (int *) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static ULONG Unknown_AddRef(InternetShortcut *This)
{
    TRACE("(%p)\n", This);
    return InterlockedIncrement(&This->refCount);
}
