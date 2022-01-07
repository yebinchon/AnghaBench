
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int * value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NO_OID ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*) ;
 int gss_display_status (scalar_t__*,scalar_t__,int,int ,scalar_t__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int strlcpy (char*,int *,size_t) ;

__attribute__((used)) static void
pg_GSS_error_int(char *s, size_t len, OM_uint32 stat, int type)
{
 gss_buffer_desc gmsg;
 size_t i = 0;
 OM_uint32 lmin_s,
    msg_ctx = 0;

 gmsg.value = ((void*)0);
 gmsg.length = 0;

 do
 {
  gss_display_status(&lmin_s, stat, type,
         GSS_C_NO_OID, &msg_ctx, &gmsg);
  strlcpy(s + i, gmsg.value, len - i);
  i += gmsg.length;
  gss_release_buffer(&lmin_s, &gmsg);
 }
 while (msg_ctx && i < len);

 if (msg_ctx || i == len)
  ereport(WARNING,
    (errmsg_internal("incomplete GSS error report")));
}
