
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;
typedef int OM_uint32 ;


 int GSS_C_GSS_CODE ;
 int GSS_C_MECH_CODE ;
 int pg_GSS_error_int (int *,char const*,int ,int ) ;
 int resetPQExpBuffer (int *) ;

void
pg_GSS_error(const char *mprefix, PGconn *conn,
    OM_uint32 maj_stat, OM_uint32 min_stat)
{
 resetPQExpBuffer(&conn->errorMessage);


 pg_GSS_error_int(&conn->errorMessage, mprefix, maj_stat, GSS_C_GSS_CODE);


 pg_GSS_error_int(&conn->errorMessage, mprefix, min_stat, GSS_C_MECH_CODE);
}
