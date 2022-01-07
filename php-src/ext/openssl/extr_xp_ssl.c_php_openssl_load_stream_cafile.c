
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* wrapper; } ;
typedef TYPE_2__ php_stream ;
typedef int X509_STORE ;
typedef int X509 ;
struct TYPE_6__ {scalar_t__ is_url; } ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_puts (int *,char*) ;
 int BIO_s_mem () ;
 int E_WARNING ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 scalar_t__ X509_STORE_add_cert (int *,int *) ;
 int X509_free (int *) ;
 int efree (char*) ;
 int php_error (int ,char*,...) ;
 int php_stream_close (TYPE_2__*) ;
 char* php_stream_get_line (TYPE_2__*,int *,int ,size_t*) ;
 TYPE_2__* php_stream_open_wrapper (char const*,char*,int ,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static long php_openssl_load_stream_cafile(X509_STORE *cert_store, const char *cafile)
{
 php_stream *stream;
 X509 *cert;
 BIO *buffer;
 int buffer_active = 0;
 char *line = ((void*)0);
 size_t line_len;
 long certs_added = 0;

 stream = php_stream_open_wrapper(cafile, "rb", 0, ((void*)0));

 if (stream == ((void*)0)) {
  php_error(E_WARNING, "failed loading cafile stream: `%s'", cafile);
  return 0;
 } else if (stream->wrapper->is_url) {
  php_stream_close(stream);
  php_error(E_WARNING, "remote cafile streams are disabled for security purposes");
  return 0;
 }

 cert_start: {
  line = php_stream_get_line(stream, ((void*)0), 0, &line_len);
  if (line == ((void*)0)) {
   goto stream_complete;
  } else if (!strcmp(line, "-----BEGIN CERTIFICATE-----\n") ||
   !strcmp(line, "-----BEGIN CERTIFICATE-----\r\n")
  ) {
   buffer = BIO_new(BIO_s_mem());
   buffer_active = 1;
   goto cert_line;
  } else {
   efree(line);
   goto cert_start;
  }
 }

 cert_line: {
  BIO_puts(buffer, line);
  efree(line);
  line = php_stream_get_line(stream, ((void*)0), 0, &line_len);
  if (line == ((void*)0)) {
   goto stream_complete;
  } else if (!strcmp(line, "-----END CERTIFICATE-----") ||
   !strcmp(line, "-----END CERTIFICATE-----\n") ||
   !strcmp(line, "-----END CERTIFICATE-----\r\n")
  ) {
   goto add_cert;
  } else {
   goto cert_line;
  }
 }

 add_cert: {
  BIO_puts(buffer, line);
  efree(line);
  cert = PEM_read_bio_X509(buffer, ((void*)0), 0, ((void*)0));
  BIO_free(buffer);
  buffer_active = 0;
  if (cert && X509_STORE_add_cert(cert_store, cert)) {
   ++certs_added;
   X509_free(cert);
  }
  goto cert_start;
 }

 stream_complete: {
  php_stream_close(stream);
  if (buffer_active == 1) {
   BIO_free(buffer);
  }
 }

 if (certs_added == 0) {
  php_error(E_WARNING, "no valid certs found cafile stream: `%s'", cafile);
 }

 return certs_added;
}
