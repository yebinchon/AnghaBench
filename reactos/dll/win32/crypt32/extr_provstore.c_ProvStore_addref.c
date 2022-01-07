
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ WINECRYPT_CERTSTORE ;
typedef int LONG ;


 int InterlockedIncrement (int *) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static void ProvStore_addref(WINECRYPT_CERTSTORE *store)
{
    LONG ref = InterlockedIncrement(&store->ref);
    TRACE("ref = %d\n", ref);
}
