
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int doc_host; int extern_ref; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ InternetExplorer ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,scalar_t__) ;
 int WARN (char*) ;
 int deactivate_document (int *) ;

DWORD release_extern_ref(InternetExplorer *This, BOOL last_closes)
{
    LONG ref = InterlockedDecrement(&This->extern_ref);

    TRACE("ref = %d\n", ref);

    if(ref)
        return ref;

    if(!last_closes) {
        WARN("Last external connection released with FALSE last_closes.\n");
        return ref;
    }

    deactivate_document(&This->doc_host);
    return ref;
}
