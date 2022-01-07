
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t whichhost; int errorMessage; TYPE_1__* connhost; } ;
struct TYPE_4__ {char* host; } ;
typedef TYPE_2__ PGconn ;


 int free (char*) ;
 int libpq_gettext (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 int printfPQExpBuffer (int *,int ) ;
 size_t strlen (char*) ;
 scalar_t__ wildcard_certificate_match (char*,char*) ;

int
pq_verify_peer_name_matches_certificate_name(PGconn *conn,
            const char *namedata, size_t namelen,
            char **store_name)
{
 char *name;
 int result;
 char *host = conn->connhost[conn->whichhost].host;

 *store_name = ((void*)0);

 if (!(host && host[0] != '\0'))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("host name must be specified\n"));
  return -1;
 }





 name = malloc(namelen + 1);
 if (name == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return -1;
 }
 memcpy(name, namedata, namelen);
 name[namelen] = '\0';





 if (namelen != strlen(name))
 {
  free(name);
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("SSL certificate's name contains embedded null\n"));
  return -1;
 }

 if (pg_strcasecmp(name, host) == 0)
 {

  result = 1;
 }
 else if (wildcard_certificate_match(name, host))
 {

  result = 1;
 }
 else
 {
  result = 0;
 }

 *store_name = name;
 return result;
}
