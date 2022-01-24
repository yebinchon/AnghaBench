#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
struct TYPE_3__ {int /*<<< orphan*/  gc_ctx; int /*<<< orphan*/  gc_proc; } ;
struct rpc_sspi_data {scalar_t__ established; TYPE_2__ gc_wire_verf; int /*<<< orphan*/  ctx; TYPE_1__ gc; int /*<<< orphan*/  clnt; } ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_sspi_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  NULLPROC ; 
 int /*<<< orphan*/  RPCSEC_SSPI_DESTROY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  min_stat ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC11(AUTH *auth)
{
	struct rpc_sspi_data *gd;

	FUNC7("in authgss_destroy_context()");

	gd = FUNC0(auth);
    if (gd == NULL) return;

	if (FUNC3(&gd->ctx)) {
		if (gd->established) {
			gd->gc.gc_proc = RPCSEC_SSPI_DESTROY;
			FUNC4(gd->clnt, NULLPROC, (xdrproc_t)xdr_void, NULL,
				  (xdrproc_t)xdr_void, NULL, AUTH_TIMEOUT);
            FUNC1(&gd->ctx);
		}
        FUNC10(&gd->gc.gc_ctx);
        FUNC2(&gd->ctx);
#if 0
		gss_release_buffer(&min_stat, &gd->gc.gc_ctx);
		/* XXX ANDROS check size of context  - should be 8 */
		memset(&gd->gc.gc_ctx, 0, sizeof(gd->gc.gc_ctx));
		gss_delete_sec_context(&min_stat, &gd->ctx, NULL);
#endif
	}

	/* free saved wire verifier (if any) */
	FUNC8(gd->gc_wire_verf.value, gd->gc_wire_verf.length);
	gd->gc_wire_verf.value = NULL;
	gd->gc_wire_verf.length = 0;

	gd->established = FALSE;
}