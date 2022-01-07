
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_stream ;
typedef int SSL_CTX ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int E_WARNING ;
 int FAILURE ;
 int NID_X9_62_prime256v1 ;
 int NID_undef ;
 int OBJ_sn2nid (int ) ;
 int PHP_STREAM_CONTEXT (int *) ;
 int SSL_CTX_set_ecdh_auto (int *,int) ;
 int SSL_CTX_set_tmp_ecdh (int *,int *) ;
 int SUCCESS ;
 int Z_STRVAL_P (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int * php_stream_context_get_option (int ,char*,char*) ;
 int try_convert_to_string (int *) ;

__attribute__((used)) static int php_openssl_set_server_ecdh_curve(php_stream *stream, SSL_CTX *ctx)
{
 zval *zvcurve;
 int curve_nid;
 EC_KEY *ecdh;

 zvcurve = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream), "ssl", "ecdh_curve");
 if (zvcurve == ((void*)0)) {




  curve_nid = NID_X9_62_prime256v1;

 } else {
  if (!try_convert_to_string(zvcurve)) {
   return FAILURE;
  }

  curve_nid = OBJ_sn2nid(Z_STRVAL_P(zvcurve));
  if (curve_nid == NID_undef) {
   php_error_docref(((void*)0), E_WARNING, "invalid ecdh_curve specified");
   return FAILURE;
  }
 }

 ecdh = EC_KEY_new_by_curve_name(curve_nid);
 if (ecdh == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "failed generating ECDH curve");
  return FAILURE;
 }

 SSL_CTX_set_tmp_ecdh(ctx, ecdh);
 EC_KEY_free(ecdh);

 return SUCCESS;
}
