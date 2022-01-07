
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int ;
struct timezone {int dummy; } ;
struct TYPE_13__ {scalar_t__ low; scalar_t__ high; } ;
struct TYPE_16__ {TYPE_3__ key; } ;
struct authdes_verf {scalar_t__ adv_winverf; TYPE_6__ adv_xtimestamp; } ;
struct TYPE_12__ {scalar_t__ window; } ;
struct authdes_cred {scalar_t__ adc_namekind; int adc_nickname; TYPE_2__ adc_fullname; } ;
struct TYPE_18__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_11__ {int tv_sec; scalar_t__ tv_usec; } ;
struct ad_private {int ad_fullnamelen; struct authdes_cred ad_cred; struct authdes_verf ad_verf; int ad_nickname; scalar_t__ ad_window; TYPE_8__ ad_timestamp; TYPE_1__ ad_timediff; } ;
typedef int rpc_inline_t ;
typedef TYPE_6__ des_block ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_15__ {int oa_flavor; } ;
struct TYPE_14__ {int oa_flavor; } ;
struct TYPE_17__ {TYPE_5__ ah_verf; TYPE_4__ ah_cred; int ah_key; } ;
typedef TYPE_7__ AUTH ;


 scalar_t__ ADN_FULLNAME ;
 int ATTEMPT (int ) ;
 int AUTH_DES ;
 struct ad_private* AUTH_PRIVATE (TYPE_7__*) ;
 int BYTES_PER_XDR_UNIT ;
 int DES_ENCRYPT ;
 scalar_t__ DES_FAILED (int) ;
 int DES_HW ;
 int FALSE ;
 int IXDR_PUT_INT32 (int *,int) ;
 int IXDR_PUT_U_INT32 (int *,scalar_t__) ;
 int TRUE ;
 scalar_t__ USEC_PER_SEC ;
 int cbc_crypt (char*,char*,int,int,char*) ;
 int ecb_crypt (char*,char*,int,int) ;
 int gettimeofday (TYPE_8__*,struct timezone*) ;
 int xdr_authdes_cred (int *,struct authdes_cred*) ;
 int xdr_authdes_verf (int *,struct authdes_verf*) ;
 int * xdr_inline (int *,int) ;
 int xdr_putint32 (int *,int*) ;

__attribute__((used)) static bool_t
authdes_marshal(AUTH *auth, XDR *xdrs)
{

 struct ad_private *ad = AUTH_PRIVATE(auth);
 struct authdes_cred *cred = &ad->ad_cred;
 struct authdes_verf *verf = &ad->ad_verf;
 des_block cryptbuf[2];
 des_block ivec;
 int status;
 int len;
 rpc_inline_t *ixdr;





 (void) gettimeofday(&ad->ad_timestamp, (struct timezone *)((void*)0));
 ad->ad_timestamp.tv_sec += ad->ad_timediff.tv_sec;
 ad->ad_timestamp.tv_usec += ad->ad_timediff.tv_usec;
 while (ad->ad_timestamp.tv_usec >= USEC_PER_SEC) {
  ad->ad_timestamp.tv_usec -= USEC_PER_SEC;
  ad->ad_timestamp.tv_sec++;
 }





 ixdr = (rpc_inline_t *)cryptbuf;
 IXDR_PUT_INT32(ixdr, ad->ad_timestamp.tv_sec);
 IXDR_PUT_INT32(ixdr, ad->ad_timestamp.tv_usec);
 if (ad->ad_cred.adc_namekind == ADN_FULLNAME) {
  IXDR_PUT_U_INT32(ixdr, ad->ad_window);
  IXDR_PUT_U_INT32(ixdr, ad->ad_window - 1);
  ivec.key.high = ivec.key.low = 0;
  status = cbc_crypt((char *)&auth->ah_key, (char *)cryptbuf,
   (u_int) 2 * sizeof (des_block),
   DES_ENCRYPT | DES_HW, (char *)&ivec);
 } else {
  status = ecb_crypt((char *)&auth->ah_key, (char *)cryptbuf,
   (u_int) sizeof (des_block),
   DES_ENCRYPT | DES_HW);
 }
 if (DES_FAILED(status)) {

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





 if (ad->ad_cred.adc_namekind == ADN_FULLNAME) {
  len = ((1 + 1 + 2 + 1)*BYTES_PER_XDR_UNIT + ad->ad_fullnamelen);
 } else {
  len = (1 + 1)*BYTES_PER_XDR_UNIT;
 }

 if ((ixdr = xdr_inline(xdrs, 2*BYTES_PER_XDR_UNIT))) {
  IXDR_PUT_INT32(ixdr, AUTH_DES);
  IXDR_PUT_INT32(ixdr, len);
 } else {
  ATTEMPT(xdr_putint32(xdrs, (int *)&auth->ah_cred.oa_flavor));
  ATTEMPT(xdr_putint32(xdrs, &len));
 }
 ATTEMPT(xdr_authdes_cred(xdrs, cred));

 len = (2 + 1)*BYTES_PER_XDR_UNIT;
 if ((ixdr = xdr_inline(xdrs, 2*BYTES_PER_XDR_UNIT))) {
  IXDR_PUT_INT32(ixdr, AUTH_DES);
  IXDR_PUT_INT32(ixdr, len);
 } else {
  ATTEMPT(xdr_putint32(xdrs, (int *)&auth->ah_verf.oa_flavor));
  ATTEMPT(xdr_putint32(xdrs, &len));
 }
 ATTEMPT(xdr_authdes_verf(xdrs, verf));
 return (TRUE);
}
