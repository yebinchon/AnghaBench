
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct sockaddr {int dummy; } ;
typedef int sebuf ;
typedef scalar_t__ pgsocket ;
typedef int crp ;
struct TYPE_7__ {void* cancelAuthCode; void* backendPID; scalar_t__ cancelRequestCode; } ;
struct TYPE_5__ {int ss_family; } ;
struct TYPE_6__ {int salen; TYPE_1__ addr; } ;
typedef TYPE_2__ SockAddr ;
typedef scalar_t__ MsgType ;
typedef TYPE_3__ CancelRequestPacket ;


 int CANCEL_REQUEST_CODE ;
 int EINTR ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 int SOCK_ERRNO_SET (int) ;
 int SOCK_STREAM ;
 int SOCK_STRERROR (int,char*,int) ;
 int closesocket (scalar_t__) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int ) ;
 void* pg_hton32 (int) ;
 scalar_t__ recv (scalar_t__,char*,int,int ) ;
 int send (scalar_t__,char*,int,int ) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strcat (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strncat (char*,int ,int) ;

__attribute__((used)) static int
internal_cancel(SockAddr *raddr, int be_pid, int be_key,
    char *errbuf, int errbufsize)
{
 int save_errno = SOCK_ERRNO;
 pgsocket tmpsock = PGINVALID_SOCKET;
 char sebuf[PG_STRERROR_R_BUFLEN];
 int maxlen;
 struct
 {
  uint32 packetlen;
  CancelRequestPacket cp;
 } crp;





 if ((tmpsock = socket(raddr->addr.ss_family, SOCK_STREAM, 0)) == PGINVALID_SOCKET)
 {
  strlcpy(errbuf, "PQcancel() -- socket() failed: ", errbufsize);
  goto cancel_errReturn;
 }
retry3:
 if (connect(tmpsock, (struct sockaddr *) &raddr->addr,
    raddr->salen) < 0)
 {
  if (SOCK_ERRNO == EINTR)

   goto retry3;
  strlcpy(errbuf, "PQcancel() -- connect() failed: ", errbufsize);
  goto cancel_errReturn;
 }







 crp.packetlen = pg_hton32((uint32) sizeof(crp));
 crp.cp.cancelRequestCode = (MsgType) pg_hton32(CANCEL_REQUEST_CODE);
 crp.cp.backendPID = pg_hton32(be_pid);
 crp.cp.cancelAuthCode = pg_hton32(be_key);

retry4:
 if (send(tmpsock, (char *) &crp, sizeof(crp), 0) != (int) sizeof(crp))
 {
  if (SOCK_ERRNO == EINTR)

   goto retry4;
  strlcpy(errbuf, "PQcancel() -- send() failed: ", errbufsize);
  goto cancel_errReturn;
 }
retry5:
 if (recv(tmpsock, (char *) &crp, 1, 0) < 0)
 {
  if (SOCK_ERRNO == EINTR)

   goto retry5;

 }


 closesocket(tmpsock);
 SOCK_ERRNO_SET(save_errno);
 return 1;

cancel_errReturn:





 maxlen = errbufsize - strlen(errbuf) - 2;
 if (maxlen >= 0)
 {
  strncat(errbuf, SOCK_STRERROR(SOCK_ERRNO, sebuf, sizeof(sebuf)),
    maxlen);
  strcat(errbuf, "\n");
 }
 if (tmpsock != PGINVALID_SOCKET)
  closesocket(tmpsock);
 SOCK_ERRNO_SET(save_errno);
 return 0;
}
