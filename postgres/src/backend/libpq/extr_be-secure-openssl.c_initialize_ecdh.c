
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int FATAL ;
 int LOG ;
 int OBJ_sn2nid (int ) ;
 int SSLECDHCurve ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_CTX_set_tmp_ecdh (int *,int *) ;
 int SSL_OP_SINGLE_ECDH_USE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

__attribute__((used)) static bool
initialize_ecdh(SSL_CTX *context, bool isServerStart)
{

 EC_KEY *ecdh;
 int nid;

 nid = OBJ_sn2nid(SSLECDHCurve);
 if (!nid)
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("ECDH: unrecognized curve name: %s", SSLECDHCurve)));
  return 0;
 }

 ecdh = EC_KEY_new_by_curve_name(nid);
 if (!ecdh)
 {
  ereport(isServerStart ? FATAL : LOG,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("ECDH: could not create key")));
  return 0;
 }

 SSL_CTX_set_options(context, SSL_OP_SINGLE_ECDH_USE);
 SSL_CTX_set_tmp_ecdh(context, ecdh);
 EC_KEY_free(ecdh);


 return 1;
}
