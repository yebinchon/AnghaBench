
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_context {int gl_ctx; } ;
typedef int GLDISPATCHTABLE ;
typedef scalar_t__ DHGLRC ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct sw_context*) ;
 int * IntGetCurrentDispatchTable () ;
 void* IntGetCurrentICDPrivate () ;
 int IntSetCurrentDispatchTable (int const*) ;
 int IntSetCurrentICDPrivate (void*) ;
 int TRUE ;
 int gl_destroy_context (int ) ;

BOOL sw_DeleteContext(DHGLRC dhglrc)
{
    struct sw_context* sw_ctx = (struct sw_context*)dhglrc;

    void* icd_save = IntGetCurrentICDPrivate();
    const GLDISPATCHTABLE* table_save = IntGetCurrentDispatchTable();


    gl_destroy_context(sw_ctx->gl_ctx);

    HeapFree(GetProcessHeap(), 0, sw_ctx);


    IntSetCurrentDispatchTable(table_save);
    IntSetCurrentICDPrivate(icd_save);

    return TRUE;
}
