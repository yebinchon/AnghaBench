
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_private {int ad_fullnamelen; int ad_servernamelen; struct ad_private* ad_uaddr; struct ad_private* ad_netid; struct ad_private* ad_timehost; struct ad_private* ad_servername; struct ad_private* ad_fullname; } ;
typedef struct ad_private AUTH ;


 struct ad_private* AUTH_PRIVATE (struct ad_private*) ;
 int FREE (struct ad_private*,int) ;
 int strlen (struct ad_private*) ;

__attribute__((used)) static void
authdes_destroy(AUTH *auth)
{

 struct ad_private *ad = AUTH_PRIVATE(auth);

 FREE(ad->ad_fullname, ad->ad_fullnamelen + 1);
 FREE(ad->ad_servername, ad->ad_servernamelen + 1);
 if (ad->ad_timehost)
  FREE(ad->ad_timehost, strlen(ad->ad_timehost) + 1);
 if (ad->ad_netid)
  FREE(ad->ad_netid, strlen(ad->ad_netid) + 1);
 if (ad->ad_uaddr)
  FREE(ad->ad_uaddr, strlen(ad->ad_uaddr) + 1);
 FREE(ad, sizeof (struct ad_private));
 FREE(auth, sizeof(AUTH));
}
