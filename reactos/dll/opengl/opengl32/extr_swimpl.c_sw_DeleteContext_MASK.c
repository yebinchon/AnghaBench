#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sw_context {int /*<<< orphan*/  gl_ctx; } ;
typedef  int /*<<< orphan*/  GLDISPATCHTABLE ;
typedef  scalar_t__ DHGLRC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sw_context*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

BOOL FUNC7(DHGLRC dhglrc)
{
    struct sw_context* sw_ctx = (struct sw_context*)dhglrc;
    /* Those get clobbered by _mesa_free_context_data via _glapi_set{context,dispath_table} */
    void* icd_save = FUNC3();
    const GLDISPATCHTABLE* table_save = FUNC2();
    
    /* Destroy everything */
    FUNC6(sw_ctx->gl_ctx);

    FUNC1(FUNC0(), 0, sw_ctx);
    
    /* Restore this */
    FUNC4(table_save);
    FUNC5(icd_save);

    return TRUE;
}