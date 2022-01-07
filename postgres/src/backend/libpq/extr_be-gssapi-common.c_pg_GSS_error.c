
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_minor ;
typedef int msg_major ;
typedef int OM_uint32 ;


 int GSS_C_GSS_CODE ;
 int GSS_C_MECH_CODE ;
 int ereport (int,int ) ;
 int errdetail_internal (char*,char*,char*) ;
 int errmsg_internal (char*,char const*) ;
 int pg_GSS_error_int (char*,int,int ,int ) ;

void
pg_GSS_error(int severity, const char *errmsg,
    OM_uint32 maj_stat, OM_uint32 min_stat)
{
 char msg_major[128],
    msg_minor[128];


 pg_GSS_error_int(msg_major, sizeof(msg_major), maj_stat, GSS_C_GSS_CODE);


 pg_GSS_error_int(msg_minor, sizeof(msg_minor), min_stat, GSS_C_MECH_CODE);





 ereport(severity,
   (errmsg_internal("%s", errmsg),
    errdetail_internal("%s: %s", msg_major, msg_minor)));
}
