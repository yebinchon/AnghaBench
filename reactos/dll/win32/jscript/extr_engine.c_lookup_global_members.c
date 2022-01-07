
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* named_items; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_6__ {int flags; int disp; struct TYPE_6__* next; } ;
typedef TYPE_2__ named_item_t ;
typedef int exprval_t ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int disp_get_id (TYPE_1__*,int ,int ,int ,int ,int *) ;
 int exprval_set_disp_ref (int *,int ,int ) ;

__attribute__((used)) static BOOL lookup_global_members(script_ctx_t *ctx, BSTR identifier, exprval_t *ret)
{
    named_item_t *item;
    DISPID id;
    HRESULT hres;

    for(item = ctx->named_items; item; item = item->next) {
        if(item->flags & SCRIPTITEM_GLOBALMEMBERS) {
            hres = disp_get_id(ctx, item->disp, identifier, identifier, 0, &id);
            if(SUCCEEDED(hres)) {
                if(ret)
                    exprval_set_disp_ref(ret, item->disp, id);
                return TRUE;
            }
        }
    }

    return FALSE;
}
