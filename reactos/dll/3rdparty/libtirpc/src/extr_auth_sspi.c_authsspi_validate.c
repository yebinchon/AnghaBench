
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct TYPE_9__ {scalar_t__ gc_proc; int gc_seq; } ;
struct TYPE_8__ {int length; int * value; } ;
struct rpc_sspi_data {scalar_t__ established; int win; int ctx; TYPE_2__ gc; TYPE_1__ gc_wire_verf; } ;
struct opaque_auth {int oa_length; int* oa_base; } ;
struct TYPE_10__ {int* value; int length; } ;
typedef TYPE_3__ sspi_buffer_desc ;
typedef int num ;
typedef scalar_t__ bool_t ;
typedef int AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ;
 scalar_t__ RPCSEC_SSPI_DESTROY ;
 scalar_t__ RPCSEC_SSPI_INIT ;
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ TRUE ;
 int authsspi_destroy_context (int *) ;
 scalar_t__ gss_verify_mic (int *,int ,TYPE_3__*,TYPE_3__*,int*) ;
 int htonl (int) ;
 int log_debug (char*,scalar_t__) ;
 int * mem_alloc (int) ;
 int memcpy (int *,int*,int) ;
 int min_stat ;
 scalar_t__ sspi_verify_mic (int *,int,TYPE_3__*,TYPE_3__*,int*) ;

__attribute__((used)) static bool_t
authsspi_validate(AUTH *auth, struct opaque_auth *verf, u_int seq)
{
 struct rpc_sspi_data *gd;
 u_int num, qop_state, cur_seq;
 sspi_buffer_desc signbuf, checksum;
 uint32_t maj_stat;

 log_debug("in authgss_validate(for seq=%d)", seq);

 gd = AUTH_PRIVATE(auth);

 if (gd->established == FALSE) {






  if ((gd->gc_wire_verf.value =
    mem_alloc(verf->oa_length)) == ((void*)0)) {
   return (FALSE);
  }
  memcpy(gd->gc_wire_verf.value, verf->oa_base, verf->oa_length);
  gd->gc_wire_verf.length = verf->oa_length;
  return (TRUE);
   }

    if (gd->gc.gc_proc == RPCSEC_SSPI_DESTROY)
        return TRUE;

 if (gd->gc.gc_proc == RPCSEC_SSPI_INIT ||
         gd->gc.gc_proc == RPCSEC_SSPI_CONTINUE_INIT) {
  num = htonl(gd->win);
 }
 else {
        if (seq == -1) {
            num = htonl(gd->gc.gc_seq);
            cur_seq = gd->gc.gc_seq;
        }
     else {
            num = htonl(seq);
            cur_seq = seq;
        }
    }

 signbuf.value = &num;
 signbuf.length = sizeof(num);

 checksum.value = verf->oa_base;
 checksum.length = verf->oa_length;




    maj_stat = sspi_verify_mic(&gd->ctx, cur_seq, &signbuf, &checksum, &qop_state);

 if (maj_stat != SEC_E_OK) {
  log_debug("authsspi_validate: VerifySignature failed with %x", maj_stat);
  if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
   gd->established = FALSE;
   authsspi_destroy_context(auth);
  }
  return (FALSE);
 }
 return (TRUE);
}
