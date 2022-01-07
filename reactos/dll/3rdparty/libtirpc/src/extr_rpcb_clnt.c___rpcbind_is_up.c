
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int * nc_protofmly; } ;
typedef int bool_t ;
typedef scalar_t__ SOCKET ;


 int AF_UNIX ;
 int FALSE ;
 scalar_t__ INVALID_SOCKET ;
 int NC_LOOPBACK ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int TRUE ;
 int _PATH_RPCBINDSOCK ;
 int closesocket (scalar_t__) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 int endnetconfig (void*) ;
 struct netconfig* getnetconfig (void*) ;
 int memset (struct sockaddr_un*,int ,int) ;
 void* setnetconfig () ;
 scalar_t__ socket (int ,int ,int ) ;
 scalar_t__ strcmp (int *,int ) ;
 int strncpy (int ,int ,int) ;

bool_t
__rpcbind_is_up()
{
 struct netconfig *nconf;
 struct sockaddr_un sun;
 void *localhandle;
 SOCKET sock;

 nconf = ((void*)0);
 localhandle = setnetconfig();
 while ((nconf = getnetconfig(localhandle)) != ((void*)0)) {
  if (nconf->nc_protofmly != ((void*)0) &&
      strcmp(nconf->nc_protofmly, NC_LOOPBACK) == 0)
    break;
 }
 if (nconf == ((void*)0))
  return (FALSE);

 endnetconfig(localhandle);

 memset(&sun, 0, sizeof sun);
 sock = socket(AF_UNIX, SOCK_STREAM, 0);
 if (sock == INVALID_SOCKET)
  return (FALSE);
 sun.sun_family = AF_UNIX;
 strncpy(sun.sun_path, _PATH_RPCBINDSOCK, sizeof(sun.sun_path));

 if (connect(sock, (struct sockaddr *)&sun, sizeof(sun)) == SOCKET_ERROR) {
  closesocket(sock);
  return (FALSE);
 }

 closesocket(sock);
 return (TRUE);
}
