
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int PQExpBuffer ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NO_OID ;
 int appendPQExpBuffer (int ,char*,char const*,char*) ;
 int gss_display_status (scalar_t__*,scalar_t__,int,int ,scalar_t__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;

__attribute__((used)) static void
pg_GSS_error_int(PQExpBuffer str, const char *mprefix,
     OM_uint32 stat, int type)
{
 OM_uint32 lmin_s;
 gss_buffer_desc lmsg;
 OM_uint32 msg_ctx = 0;

 do
 {
  gss_display_status(&lmin_s, stat, type,
         GSS_C_NO_OID, &msg_ctx, &lmsg);
  appendPQExpBuffer(str, "%s: %s\n", mprefix, (char *) lmsg.value);
  gss_release_buffer(&lmin_s, &lmsg);
 } while (msg_ctx);
}
