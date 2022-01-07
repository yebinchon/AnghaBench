
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_7__ {int name; int key; } ;
struct authdes_cred {TYPE_1__ adc_fullname; int adc_namekind; } ;
struct ad_private {int ad_fullname; int ad_xkey; int ad_servername; scalar_t__ ad_pkey; scalar_t__ ad_dosync; int ad_netid; int ad_uaddr; int ad_timehost; int ad_nis_srvr; int ad_timediff; struct authdes_cred ad_cred; } ;
struct TYPE_8__ {char* n_bytes; scalar_t__ n_len; } ;
typedef TYPE_2__ netobj ;
typedef int bool_t ;
struct TYPE_9__ {int ah_key; } ;
typedef TYPE_3__ AUTH ;


 int ADN_FULLNAME ;
 struct ad_private* AUTH_PRIVATE (TYPE_3__*) ;
 int FALSE ;
 int TRUE ;
 int __rpc_get_time_offset (int *,int ,int ,int *,int *) ;
 scalar_t__ key_encryptsession_pk (int ,TYPE_2__*,int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bool_t
authdes_refresh(AUTH *auth, void *dummy)
{

 struct ad_private *ad = AUTH_PRIVATE(auth);
 struct authdes_cred *cred = &ad->ad_cred;
 int ok;
 netobj pkey;

 if (ad->ad_dosync) {

  ok = 1;





  if (! ok) {



   ad->ad_dosync = 0;


   }
 }
 ad->ad_xkey = auth->ah_key;
 pkey.n_bytes = (char *)(ad->ad_pkey);
 pkey.n_len = (u_int)strlen((char *)ad->ad_pkey) + 1;
 if (key_encryptsession_pk(ad->ad_servername, &pkey, &ad->ad_xkey) < 0) {


  return (FALSE);
 }
 cred->adc_fullname.key = ad->ad_xkey;
 cred->adc_namekind = ADN_FULLNAME;
 cred->adc_fullname.name = ad->ad_fullname;
 return (TRUE);
}
