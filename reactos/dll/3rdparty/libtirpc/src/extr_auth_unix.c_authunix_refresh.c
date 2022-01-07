
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct authunix_parms {int aup_time; int * aup_gids; int * aup_machname; } ;
struct TYPE_11__ {scalar_t__ oa_base; int oa_length; } ;
struct audata {TYPE_1__ au_origcred; int au_shfaults; } ;
typedef int bool_t ;
struct TYPE_12__ {int x_op; } ;
typedef TYPE_2__ XDR ;
struct TYPE_13__ {TYPE_1__ ah_cred; } ;
typedef TYPE_3__ AUTH ;


 struct audata* AUTH_PRIVATE (TYPE_3__*) ;
 int FALSE ;
 int XDR_DECODE ;
 int XDR_DESTROY (TYPE_2__*) ;
 int XDR_ENCODE ;
 int XDR_FREE ;
 int XDR_SETPOS (TYPE_2__*,int ) ;
 int assert (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int marshal_new_auth (TYPE_3__*) ;
 int xdr_authunix_parms (TYPE_2__*,struct authunix_parms*) ;
 int xdrmem_create (TYPE_2__*,scalar_t__,int ,int ) ;

__attribute__((used)) static bool_t
authunix_refresh(AUTH *auth, void *dummy)
{
 struct audata *au = AUTH_PRIVATE(auth);
 struct authunix_parms aup;
 struct timeval now;
 XDR xdrs;
 int stat;

 assert(auth != ((void*)0));

 if (auth->ah_cred.oa_base == au->au_origcred.oa_base) {

  return (FALSE);
 }
 au->au_shfaults ++;


 aup.aup_machname = ((void*)0);
 aup.aup_gids = ((void*)0);
 xdrmem_create(&xdrs, au->au_origcred.oa_base,
     au->au_origcred.oa_length, XDR_DECODE);
 stat = xdr_authunix_parms(&xdrs, &aup);
 if (! stat)
  goto done;


 (void)gettimeofday(&now, ((void*)0));
 aup.aup_time = now.tv_sec;
 xdrs.x_op = XDR_ENCODE;
 XDR_SETPOS(&xdrs, 0);
 stat = xdr_authunix_parms(&xdrs, &aup);
 if (! stat)
  goto done;
 auth->ah_cred = au->au_origcred;
 marshal_new_auth(auth);
done:

 xdrs.x_op = XDR_FREE;
 (void)xdr_authunix_parms(&xdrs, &aup);
 XDR_DESTROY(&xdrs);
 return (stat);
}
