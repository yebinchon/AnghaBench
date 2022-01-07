
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dirty; } ;
typedef TYPE_1__ WINE_REGSTOREINFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_RegWriteToReg (TYPE_1__*) ;
 scalar_t__ FALSE ;
 int TRACE (char*,TYPE_1__*,scalar_t__) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL CRYPT_RegFlushStore(WINE_REGSTOREINFO *store, BOOL force)
{
    BOOL ret;

    TRACE("(%p, %d)\n", store, force);

    if (store->dirty || force)
    {
        ret = CRYPT_RegWriteToReg(store);
        if (ret)
            store->dirty = FALSE;
    }
    else
        ret = TRUE;
    return ret;
}
