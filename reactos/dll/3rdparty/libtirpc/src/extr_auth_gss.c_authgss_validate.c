
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ qop; } ;
struct TYPE_8__ {scalar_t__ gc_proc; int gc_seq; } ;
struct TYPE_7__ {int length; int * value; } ;
struct rpc_gss_data {scalar_t__ established; TYPE_3__ sec; int ctx; TYPE_2__ gc; int win; TYPE_1__ gc_wire_verf; } ;
struct opaque_auth {int oa_length; scalar_t__* oa_base; } ;
typedef int num ;
struct TYPE_10__ {scalar_t__* value; int length; } ;
typedef TYPE_4__ gss_buffer_desc ;
typedef scalar_t__ bool_t ;
typedef scalar_t__ OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ;
 scalar_t__ RPCSEC_GSS_INIT ;
 scalar_t__ TRUE ;
 int authgss_destroy_context (int *) ;
 int fprintf (int ,char*) ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_4__*,TYPE_4__*,scalar_t__*) ;
 scalar_t__ htonl (int ) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int * mem_alloc (int) ;
 int memcpy (int *,scalar_t__*,int) ;
 int stderr ;

__attribute__((used)) static bool_t
authgss_validate(AUTH *auth, struct opaque_auth *verf)
{
 struct rpc_gss_data *gd;
 u_int num, qop_state;
 gss_buffer_desc signbuf, checksum;
 OM_uint32 maj_stat, min_stat;

 log_debug("in authgss_validate()");

 gd = AUTH_PRIVATE(auth);

 if (gd->established == FALSE) {






  if ((gd->gc_wire_verf.value =
    mem_alloc(verf->oa_length)) == ((void*)0)) {
   fprintf(stderr, "gss_validate: out of memory\n");
   return (FALSE);
  }
  memcpy(gd->gc_wire_verf.value, verf->oa_base, verf->oa_length);
  gd->gc_wire_verf.length = verf->oa_length;
  return (TRUE);
   }

 if (gd->gc.gc_proc == RPCSEC_GSS_INIT ||
     gd->gc.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
  num = htonl(gd->win);
 }
 else num = htonl(gd->gc.gc_seq);

 signbuf.value = &num;
 signbuf.length = sizeof(num);

 checksum.value = verf->oa_base;
 checksum.length = verf->oa_length;

 maj_stat = gss_verify_mic(&min_stat, gd->ctx, &signbuf,
      &checksum, &qop_state);
 if (maj_stat != GSS_S_COMPLETE || qop_state != gd->sec.qop) {
  log_status("gss_verify_mic", maj_stat, min_stat);
  if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
   gd->established = FALSE;
   authgss_destroy_context(auth);
  }
  return (FALSE);
 }
 return (TRUE);
}
