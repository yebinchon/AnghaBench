#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
struct TYPE_9__ {scalar_t__ gc_proc; int gc_seq; } ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * value; } ;
struct rpc_sspi_data {scalar_t__ established; int win; int /*<<< orphan*/  ctx; TYPE_2__ gc; TYPE_1__ gc_wire_verf; } ;
struct opaque_auth {int oa_length; int* oa_base; } ;
struct TYPE_10__ {int* value; int length; } ;
typedef  TYPE_3__ sspi_buffer_desc ;
typedef  int /*<<< orphan*/  num ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_sspi_data* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_SSPI_DESTROY ; 
 scalar_t__ RPCSEC_SSPI_INIT ; 
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,int*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  min_stat ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,TYPE_3__*,TYPE_3__*,int*) ; 

__attribute__((used)) static bool_t
FUNC8(AUTH *auth, struct opaque_auth *verf, u_int seq)
{
	struct rpc_sspi_data *gd;
	u_int num, qop_state, cur_seq;
	sspi_buffer_desc signbuf, checksum;
	uint32_t maj_stat;

	FUNC4("in authgss_validate(for seq=%d)", seq);

	gd = FUNC0(auth);

	if (gd->established == FALSE) {
		/* would like to do this only on NULL rpc --
		 * gc->established is good enough.
		 * save the on the wire verifier to validate last
		 * INIT phase packet after decode if the major
		 * status is GSS_S_COMPLETE
		 */
		if ((gd->gc_wire_verf.value =
				FUNC5(verf->oa_length)) == NULL) {
			return (FALSE);
		}
		FUNC6(gd->gc_wire_verf.value, verf->oa_base, verf->oa_length);
		gd->gc_wire_verf.length = verf->oa_length;
		return (TRUE);
  	}

    if (gd->gc.gc_proc == RPCSEC_SSPI_DESTROY) 
        return TRUE;

	if (gd->gc.gc_proc == RPCSEC_SSPI_INIT ||
	        gd->gc.gc_proc == RPCSEC_SSPI_CONTINUE_INIT) {
		num = FUNC3(gd->win);
	}
	else {
        if (seq == -1) {
            num = FUNC3(gd->gc.gc_seq);
            cur_seq = gd->gc.gc_seq;
        }
	    else {
            num = FUNC3(seq);
            cur_seq = seq;
        }
    }

	signbuf.value = &num;
	signbuf.length = sizeof(num);

	checksum.value = verf->oa_base;
	checksum.length = verf->oa_length;
#if 0
	maj_stat = gss_verify_mic(&min_stat, gd->ctx, &signbuf,
				  &checksum, &qop_state);
#else
    maj_stat = FUNC7(&gd->ctx, cur_seq, &signbuf, &checksum, &qop_state);
#endif
	if (maj_stat != SEC_E_OK) {
		FUNC4("authsspi_validate: VerifySignature failed with %x", maj_stat);
		if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
			gd->established = FALSE;
			FUNC1(auth);
		}
		return (FALSE);
	}
	return (TRUE);
}