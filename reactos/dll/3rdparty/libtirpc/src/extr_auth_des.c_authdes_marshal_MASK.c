#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct timezone {int dummy; } ;
struct TYPE_13__ {scalar_t__ low; scalar_t__ high; } ;
struct TYPE_16__ {TYPE_3__ key; } ;
struct authdes_verf {scalar_t__ adv_winverf; TYPE_6__ adv_xtimestamp; } ;
struct TYPE_12__ {scalar_t__ window; } ;
struct authdes_cred {scalar_t__ adc_namekind; int /*<<< orphan*/  adc_nickname; TYPE_2__ adc_fullname; } ;
struct TYPE_18__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_11__ {int tv_sec; scalar_t__ tv_usec; } ;
struct ad_private {int ad_fullnamelen; struct authdes_cred ad_cred; struct authdes_verf ad_verf; int /*<<< orphan*/  ad_nickname; scalar_t__ ad_window; TYPE_8__ ad_timestamp; TYPE_1__ ad_timediff; } ;
typedef  int /*<<< orphan*/  rpc_inline_t ;
typedef  TYPE_6__ des_block ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_15__ {int /*<<< orphan*/  oa_flavor; } ;
struct TYPE_14__ {int /*<<< orphan*/  oa_flavor; } ;
struct TYPE_17__ {TYPE_5__ ah_verf; TYPE_4__ ah_cred; int /*<<< orphan*/  ah_key; } ;
typedef  TYPE_7__ AUTH ;

/* Variables and functions */
 scalar_t__ ADN_FULLNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AUTH_DES ; 
 struct ad_private* FUNC1 (TYPE_7__*) ; 
 int BYTES_PER_XDR_UNIT ; 
 int DES_ENCRYPT ; 
 scalar_t__ FUNC2 (int) ; 
 int DES_HW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ USEC_PER_SEC ; 
 int FUNC5 (char*,char*,int,int,char*) ; 
 int FUNC6 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct authdes_cred*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct authdes_verf*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t
FUNC12(AUTH *auth, XDR *xdrs)
{
/* LINTED pointer alignment */
	struct ad_private *ad = FUNC1(auth);
	struct authdes_cred *cred = &ad->ad_cred;
	struct authdes_verf *verf = &ad->ad_verf;
	des_block cryptbuf[2];	
	des_block ivec;
	int status;
	int len;
	rpc_inline_t *ixdr;

	/*
	 * Figure out the "time", accounting for any time difference
	 * with the server if necessary.
	 */
	(void) FUNC7(&ad->ad_timestamp, (struct timezone *)NULL);
	ad->ad_timestamp.tv_sec += ad->ad_timediff.tv_sec;
	ad->ad_timestamp.tv_usec += ad->ad_timediff.tv_usec;
	while (ad->ad_timestamp.tv_usec >= USEC_PER_SEC) {
		ad->ad_timestamp.tv_usec -= USEC_PER_SEC;
		ad->ad_timestamp.tv_sec++;
	}

	/*
	 * XDR the timestamp and possibly some other things, then
	 * encrypt them.
	 */
	ixdr = (rpc_inline_t *)cryptbuf;
	FUNC3(ixdr, ad->ad_timestamp.tv_sec);
	FUNC3(ixdr, ad->ad_timestamp.tv_usec);
	if (ad->ad_cred.adc_namekind == ADN_FULLNAME) {
		FUNC4(ixdr, ad->ad_window);
		FUNC4(ixdr, ad->ad_window - 1);
		ivec.key.high = ivec.key.low = 0;	
		status = FUNC5((char *)&auth->ah_key, (char *)cryptbuf, 
			(u_int) 2 * sizeof (des_block),
			DES_ENCRYPT | DES_HW, (char *)&ivec);
	} else {
		status = FUNC6((char *)&auth->ah_key, (char *)cryptbuf, 
			(u_int) sizeof (des_block),
			DES_ENCRYPT | DES_HW);
	}
	if (FUNC2(status)) {
		//syslog(LOG_ERR, "authdes_marshal: DES encryption failure");
		return (FALSE);
	}
	ad->ad_verf.adv_xtimestamp = cryptbuf[0];
	if (ad->ad_cred.adc_namekind == ADN_FULLNAME) {
		ad->ad_cred.adc_fullname.window = cryptbuf[1].key.high;
		ad->ad_verf.adv_winverf = cryptbuf[1].key.low;
	} else {
		ad->ad_cred.adc_nickname = ad->ad_nickname;
		ad->ad_verf.adv_winverf = 0;
	}

	/*
	 * Serialize the credential and verifier into opaque
	 * authentication data.
	 */
	if (ad->ad_cred.adc_namekind == ADN_FULLNAME) {
		len = ((1 + 1 + 2 + 1)*BYTES_PER_XDR_UNIT + ad->ad_fullnamelen);
	} else {
		len = (1 + 1)*BYTES_PER_XDR_UNIT;
	}

	if ((ixdr = FUNC10(xdrs, 2*BYTES_PER_XDR_UNIT))) {
		FUNC3(ixdr, AUTH_DES);
		FUNC3(ixdr, len);
	} else {
		FUNC0(FUNC11(xdrs, (int *)&auth->ah_cred.oa_flavor));
		FUNC0(FUNC11(xdrs, &len));
	}
	FUNC0(FUNC8(xdrs, cred));

	len = (2 + 1)*BYTES_PER_XDR_UNIT; 
	if ((ixdr = FUNC10(xdrs, 2*BYTES_PER_XDR_UNIT))) {
		FUNC3(ixdr, AUTH_DES);
		FUNC3(ixdr, len);
	} else {
		FUNC0(FUNC11(xdrs, (int *)&auth->ah_verf.oa_flavor));
		FUNC0(FUNC11(xdrs, &len));
	}
	FUNC0(FUNC9(xdrs, verf));
	return (TRUE);
}