
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int service ;
typedef int sebuf ;
struct TYPE_10__ {int ss_family; } ;
struct TYPE_7__ {int salen; TYPE_4__ addr; } ;
struct TYPE_9__ {size_t whichhost; int errorMessage; TYPE_2__* connhost; TYPE_1__ raddr; } ;
struct TYPE_8__ {scalar_t__ type; char* hostaddr; char* host; char* port; } ;
typedef TYPE_3__ PGconn ;


 scalar_t__ CHT_HOST_ADDRESS ;
 char* DEF_PGPORT_STR ;
 scalar_t__ IS_AF_UNIX (int ) ;
 int NI_MAXHOST ;
 int NI_NUMERICSERV ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_STRERROR (int,char*,int) ;
 int appendPQExpBuffer (int *,int ,int ,char const*,...) ;
 int getHostaddr (TYPE_3__*,char*,int) ;
 int libpq_gettext (char*) ;
 int pg_getnameinfo_all (TYPE_4__*,int ,int *,int ,char*,int,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
connectFailureMessage(PGconn *conn, int errorno)
{
 char sebuf[PG_STRERROR_R_BUFLEN];
 {
  char host_addr[NI_MAXHOST];
  const char *displayed_host;
  const char *displayed_port;





  getHostaddr(conn, host_addr, NI_MAXHOST);


  if (conn->connhost[conn->whichhost].type == CHT_HOST_ADDRESS)
   displayed_host = conn->connhost[conn->whichhost].hostaddr;
  else
   displayed_host = conn->connhost[conn->whichhost].host;
  displayed_port = conn->connhost[conn->whichhost].port;
  if (displayed_port == ((void*)0) || displayed_port[0] == '\0')
   displayed_port = DEF_PGPORT_STR;






  if (conn->connhost[conn->whichhost].type != CHT_HOST_ADDRESS &&
   strlen(host_addr) > 0 &&
   strcmp(displayed_host, host_addr) != 0)
   appendPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not connect to server: %s\n"
           "\tIs the server running on host \"%s\" (%s) and accepting\n"
           "\tTCP/IP connections on port %s?\n"),
         SOCK_STRERROR(errorno, sebuf, sizeof(sebuf)),
         displayed_host, host_addr,
         displayed_port);
  else
   appendPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not connect to server: %s\n"
           "\tIs the server running on host \"%s\" and accepting\n"
           "\tTCP/IP connections on port %s?\n"),
         SOCK_STRERROR(errorno, sebuf, sizeof(sebuf)),
         displayed_host,
         displayed_port);
 }
}
