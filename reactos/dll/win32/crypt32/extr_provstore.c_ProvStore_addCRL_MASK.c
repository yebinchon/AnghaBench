#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * hCertStore; } ;
struct TYPE_13__ {TYPE_4__ ctx; } ;
typedef  TYPE_5__ crl_t ;
typedef  int /*<<< orphan*/  context_t ;
struct TYPE_9__ {int dwOpenFlags; } ;
struct TYPE_14__ {TYPE_7__* memStore; int /*<<< orphan*/  hStoreProv; scalar_t__ (* provWriteCrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ hdr; } ;
typedef  TYPE_6__ WINE_PROVIDERSTORE ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
struct TYPE_15__ {TYPE_3__* vtbl; } ;
struct TYPE_10__ {scalar_t__ (* addContext ) (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__) ;} ;
struct TYPE_11__ {TYPE_2__ crls; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_STORE_PROV_WRITE_ADD_FLAG ; 
 int CERT_STORE_READONLY_FLAG ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC6(WINECRYPT_CERTSTORE *store, context_t *crl,
 context_t *toReplace, context_t **ppStoreContext, BOOL use_link)
{
    WINE_PROVIDERSTORE *ps = (WINE_PROVIDERSTORE*)store;
    BOOL ret;

    FUNC1("(%p, %p, %p, %p)\n", store, crl, toReplace, ppStoreContext);

    if (toReplace)
        ret = ps->memStore->vtbl->crls.addContext(ps->memStore, crl, toReplace,
         ppStoreContext, TRUE);
    else
    {
        if (ps->hdr.dwOpenFlags & CERT_STORE_READONLY_FLAG)
        {
            FUNC0(ERROR_ACCESS_DENIED);
            ret = FALSE;
        }
        else
        {
            ret = TRUE;
            if (ps->provWriteCrl)
                ret = ps->provWriteCrl(ps->hStoreProv, FUNC2(crl),
                 CERT_STORE_PROV_WRITE_ADD_FLAG);
            if (ret)
                ret = ps->memStore->vtbl->crls.addContext(ps->memStore, crl, NULL,
                 ppStoreContext, TRUE);
        }
    }
    /* dirty trick: replace the returned context's hCertStore with
     * store.
     */
    if (ret && ppStoreContext)
        (*(crl_t**)ppStoreContext)->ctx.hCertStore = store;
    return ret;
}