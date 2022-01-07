
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct authnone_private {int mcnt; int marshalled_client; } ;
typedef int mutex_t ;
typedef int bool_t ;
struct TYPE_6__ {TYPE_1__* x_ops; } ;
typedef TYPE_2__ XDR ;
struct TYPE_5__ {int (* x_putbytes ) (TYPE_2__*,int ,int ) ;} ;
typedef int AUTH ;


 int FALSE ;
 int assert (int ) ;
 struct authnone_private* authnone_private ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static bool_t
authnone_marshal(AUTH *client, XDR *xdrs, u_int *seq)
{
 struct authnone_private *ap;
 bool_t dummy;
 extern mutex_t authnone_lock;

 assert(xdrs != ((void*)0));

 ap = authnone_private;
 if (ap == ((void*)0)) {
  mutex_unlock(&authnone_lock);
  return (FALSE);
 }
 dummy = (*xdrs->x_ops->x_putbytes)(xdrs,
     ap->marshalled_client, ap->mcnt);
 mutex_unlock(&authnone_lock);
 return (dummy);
}
