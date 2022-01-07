
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_8__ {char* krbsrvname; int * gtarg_nam; int errorMessage; } ;
typedef TYPE_2__ PGconn ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_S_COMPLETE ;
 int NI_MAXHOST ;
 char* PQhost (TYPE_2__*) ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int free (char*) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,int **) ;
 int libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 int pg_GSS_error (int ,TYPE_2__*,scalar_t__,scalar_t__) ;
 int printfPQExpBuffer (int *,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

int
pg_GSS_load_servicename(PGconn *conn)
{
 OM_uint32 maj_stat,
    min_stat;
 int maxlen;
 gss_buffer_desc temp_gbuf;
 char *host;

 if (conn->gtarg_nam != ((void*)0))

  return STATUS_OK;

 host = PQhost(conn);
 if (!(host && host[0] != '\0'))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("host name must be specified\n"));
  return STATUS_ERROR;
 }





 maxlen = NI_MAXHOST + strlen(conn->krbsrvname) + 2;
 temp_gbuf.value = (char *) malloc(maxlen);
 if (!temp_gbuf.value)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return STATUS_ERROR;
 }
 snprintf(temp_gbuf.value, maxlen, "%s@%s",
    conn->krbsrvname, host);
 temp_gbuf.length = strlen(temp_gbuf.value);

 maj_stat = gss_import_name(&min_stat, &temp_gbuf,
          GSS_C_NT_HOSTBASED_SERVICE, &conn->gtarg_nam);
 free(temp_gbuf.value);

 if (maj_stat != GSS_S_COMPLETE)
 {
  pg_GSS_error(libpq_gettext("GSSAPI name import error"),
      conn,
      maj_stat, min_stat);
  return STATUS_ERROR;
 }
 return STATUS_OK;
}
