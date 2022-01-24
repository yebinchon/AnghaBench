#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ qop; } ;
struct TYPE_8__ {scalar_t__ gc_proc; int /*<<< orphan*/  gc_seq; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/ * value; } ;
struct rpc_gss_data {scalar_t__ established; TYPE_3__ sec; int /*<<< orphan*/  ctx; TYPE_2__ gc; int /*<<< orphan*/  win; TYPE_1__ gc_wire_verf; } ;
struct opaque_auth {int oa_length; scalar_t__* oa_base; } ;
typedef  int /*<<< orphan*/  num ;
struct TYPE_10__ {scalar_t__* value; int length; } ;
typedef  TYPE_4__ gss_buffer_desc ;
typedef  scalar_t__ bool_t ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_GSS_INIT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool_t
FUNC9(AUTH *auth, struct opaque_auth *verf)
{
	struct rpc_gss_data	*gd;
	u_int			 num, qop_state;
	gss_buffer_desc		 signbuf, checksum;
	OM_uint32		 maj_stat, min_stat;

	FUNC5("in authgss_validate()");

	gd = FUNC0(auth);

	if (gd->established == FALSE) {
		/* would like to do this only on NULL rpc --
		 * gc->established is good enough.
		 * save the on the wire verifier to validate last
		 * INIT phase packet after decode if the major
		 * status is GSS_S_COMPLETE
		 */
		if ((gd->gc_wire_verf.value =
				FUNC7(verf->oa_length)) == NULL) {
			FUNC2(stderr, "gss_validate: out of memory\n");
			return (FALSE);
		}
		FUNC8(gd->gc_wire_verf.value, verf->oa_base, verf->oa_length);
		gd->gc_wire_verf.length = verf->oa_length;
		return (TRUE);
  	}

	if (gd->gc.gc_proc == RPCSEC_GSS_INIT ||
	    gd->gc.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
		num = FUNC4(gd->win);
	}
	else num = FUNC4(gd->gc.gc_seq);

	signbuf.value = &num;
	signbuf.length = sizeof(num);

	checksum.value = verf->oa_base;
	checksum.length = verf->oa_length;

	maj_stat = FUNC3(&min_stat, gd->ctx, &signbuf,
				  &checksum, &qop_state);
	if (maj_stat != GSS_S_COMPLETE || qop_state != gd->sec.qop) {
		FUNC6("gss_verify_mic", maj_stat, min_stat);
		if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
			gd->established = FALSE;
			FUNC1(auth);
		}
		return (FALSE);
	}
	return (TRUE);
}