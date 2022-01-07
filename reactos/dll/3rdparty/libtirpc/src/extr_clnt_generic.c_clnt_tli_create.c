
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint ;
struct sockaddr {scalar_t__ sa_family; } ;
struct netconfig {long nc_semantics; int nc_device; int nc_netid; int nc_protofmly; } ;
struct netbuf {scalar_t__ buf; } ;
struct __rpc_sockinfo {scalar_t__ si_af; int si_socktype; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int one ;
typedef void* bool_t ;
struct TYPE_8__ {int re_errno; } ;
struct TYPE_10__ {TYPE_1__ cf_error; void* cf_stat; } ;
struct TYPE_9__ {char* cl_netid; char* cl_tp; } ;
typedef int SOCKET ;
typedef TYPE_2__ CLIENT ;
typedef void* BOOL ;


 int CLNT_CONTROL (TYPE_2__*,int ,int *) ;
 int CLSET_FD_CLOSE ;
 void* FALSE ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;



 int RPC_ANYFD ;
 void* RPC_SYSTEMERROR ;
 void* RPC_UNKNOWNHOST ;
 void* RPC_UNKNOWNPROTO ;
 int TCP_NODELAY ;
 void* TRUE ;
 int __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 int __rpc_nconf2fd (struct netconfig const*) ;
 int __rpc_raise_fd (int) ;
 long __rpc_socktype2seman (int ) ;
 int bindresvport (int,int *) ;
 TYPE_2__* clnt_dg_create (int,struct netbuf*,int const,int const,int const,int const) ;
 TYPE_2__* clnt_vc_create (int,struct netbuf*,int const,int const,int const,int const,int (*) (void*,void*),int (*) (void*,void*,void**),void*) ;
 int closesocket (int) ;
 int errno ;
 TYPE_3__ rpc_createerr ;
 int setsockopt (int,int ,int ,char const*,int) ;
 int strcmp (int ,char*) ;
 void* strdup (int ) ;

CLIENT *
clnt_tli_create(const SOCKET fd_in, const struct netconfig *nconf,
 struct netbuf *svcaddr, const rpcprog_t prog, const rpcvers_t vers,
 const uint sendsz, const uint recvsz,
    int (*callback_xdr)(void *, void *),
    int (*callback_function)(void *, void *, void **),
    void *callback_args)
{
 CLIENT *cl;
 bool_t madefd = FALSE;
 long servtype;
 BOOL one = TRUE;
 struct __rpc_sockinfo si;
 extern int __rpc_minfd;
 SOCKET fd = fd_in;

 if (fd == RPC_ANYFD) {
  if (nconf == ((void*)0)) {
   rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
   return (((void*)0));
  }

  fd = __rpc_nconf2fd(nconf);

  if (fd == INVALID_SOCKET)
   goto err;




  madefd = TRUE;
  servtype = nconf->nc_semantics;
  bindresvport(fd, ((void*)0));
  if (!__rpc_fd2sockinfo(fd, &si))
   goto err;
 } else {
  if (!__rpc_fd2sockinfo(fd, &si))
   goto err;
  servtype = __rpc_socktype2seman(si.si_socktype);
  if (servtype == -1) {
   rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
   return (((void*)0));
  }
 }

 if (si.si_af != ((struct sockaddr *)svcaddr->buf)->sa_family) {
  rpc_createerr.cf_stat = RPC_UNKNOWNHOST;
  goto err1;
 }

 switch (servtype) {
 case 129:
  cl = clnt_vc_create(fd, svcaddr, prog, vers, sendsz, recvsz,
            callback_xdr, callback_function, callback_args);
  break;
 case 128:
  if (nconf &&
      ((strcmp(nconf->nc_protofmly, "inet") == 0) ||
       (strcmp(nconf->nc_protofmly, "inet6") == 0))) {
   setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, (const char *)&one,
       sizeof (one));
  }
  cl = clnt_vc_create(fd, svcaddr, prog, vers, sendsz, recvsz,
            callback_xdr, callback_function, callback_args);
  break;
 case 130:
  cl = clnt_dg_create(fd, svcaddr, prog, vers, sendsz, recvsz);
  break;
 default:
  goto err;
 }

 if (cl == ((void*)0))
  goto err1;
 if (nconf) {
  cl->cl_netid = strdup(nconf->nc_netid);
  cl->cl_tp = strdup(nconf->nc_device);
 } else {
  cl->cl_netid = "";
  cl->cl_tp = "";
 }
 if (madefd) {
  (void) CLNT_CONTROL(cl, CLSET_FD_CLOSE, ((void*)0));

 };

 return (cl);

err:
 rpc_createerr.cf_stat = RPC_SYSTEMERROR;
 rpc_createerr.cf_error.re_errno = errno;
err1: if (madefd)
  (void)closesocket(fd);
 return (((void*)0));
}
