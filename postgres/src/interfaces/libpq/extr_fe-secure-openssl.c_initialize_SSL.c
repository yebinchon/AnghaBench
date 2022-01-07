
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int sebuf ;
typedef int homedir ;
typedef int fnbuf ;
typedef int X509_STORE ;
struct TYPE_5__ {char* sslcert; char* sslkey; char* sslrootcert; char* sslcrl; char* sslmode; int ssl_in_use; int ssl; int * sslcompression; int errorMessage; int * engine; int sock; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ PGconn ;
typedef int EVP_PKEY ;


 int * ENGINE_by_id (char*) ;
 int ENGINE_finish (int *) ;
 int ENGINE_free (int *) ;
 scalar_t__ ENGINE_init (int *) ;
 int * ENGINE_load_private_key (int *,char*,int *,int *) ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int ERR_clear_error () ;
 int ERR_get_error () ;
 int MAXPGPATH ;
 int PG_STRERROR_R_BUFLEN ;
 char* ROOT_CERT_FILE ;
 char* ROOT_CRL_FILE ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_get_cert_store (int *) ;
 int SSL_CTX_load_verify_locations (int *,char*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_mode (int *,int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_use_certificate_chain_file (int *,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSL_check_private_key (int ) ;
 int SSL_clear_options (int ,int ) ;
 int SSL_new (int *) ;
 int SSL_set_app_data (int ,TYPE_1__*) ;
 int SSL_set_options (int ,int ) ;
 int SSL_set_verify (int ,int ,int ) ;
 int SSL_use_PrivateKey (int ,int *) ;
 int SSL_use_PrivateKey_file (int ,char*,int ) ;
 int SSLerrfree (char*) ;
 char* SSLerrmessage (int ) ;
 int SSLv23_method () ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_ISREG (int) ;
 char* USER_CERT_FILE ;
 char* USER_KEY_FILE ;
 int X509_STORE_load_locations (int *,char*,int *) ;
 int X509_STORE_set_flags (int *,int) ;
 int X509_V_FLAG_CRL_CHECK ;
 int X509_V_FLAG_CRL_CHECK_ALL ;
 scalar_t__ errno ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 int my_SSL_set_fd (TYPE_1__*,int ) ;
 int pqGetHomeDirectory (char*,int) ;
 int printfPQExpBuffer (int *,int ,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 char* strerror_r (scalar_t__,char*,int) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 int verify_cb ;

__attribute__((used)) static int
initialize_SSL(PGconn *conn)
{
 SSL_CTX *SSL_context;
 struct stat buf;
 char homedir[MAXPGPATH];
 char fnbuf[MAXPGPATH];
 char sebuf[PG_STRERROR_R_BUFLEN];
 bool have_homedir;
 bool have_cert;
 bool have_rootcert;
 EVP_PKEY *pkey = ((void*)0);






 if (!(conn->sslcert && strlen(conn->sslcert) > 0) ||
  !(conn->sslkey && strlen(conn->sslkey) > 0) ||
  !(conn->sslrootcert && strlen(conn->sslrootcert) > 0) ||
  !(conn->sslcrl && strlen(conn->sslcrl) > 0))
  have_homedir = pqGetHomeDirectory(homedir, sizeof(homedir));
 else
  have_homedir = 0;
 SSL_context = SSL_CTX_new(SSLv23_method());
 if (!SSL_context)
 {
  char *err = SSLerrmessage(ERR_get_error());

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not create SSL context: %s\n"),
        err);
  SSLerrfree(err);
  return -1;
 }


 SSL_CTX_set_options(SSL_context, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);





 SSL_CTX_set_mode(SSL_context, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);






 if (conn->sslrootcert && strlen(conn->sslrootcert) > 0)
  strlcpy(fnbuf, conn->sslrootcert, sizeof(fnbuf));
 else if (have_homedir)
  snprintf(fnbuf, sizeof(fnbuf), "%s/%s", homedir, ROOT_CERT_FILE);
 else
  fnbuf[0] = '\0';

 if (fnbuf[0] != '\0' &&
  stat(fnbuf, &buf) == 0)
 {
  X509_STORE *cvstore;

  if (SSL_CTX_load_verify_locations(SSL_context, fnbuf, ((void*)0)) != 1)
  {
   char *err = SSLerrmessage(ERR_get_error());

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not read root certificate file \"%s\": %s\n"),
         fnbuf, err);
   SSLerrfree(err);
   SSL_CTX_free(SSL_context);
   return -1;
  }

  if ((cvstore = SSL_CTX_get_cert_store(SSL_context)) != ((void*)0))
  {
   if (conn->sslcrl && strlen(conn->sslcrl) > 0)
    strlcpy(fnbuf, conn->sslcrl, sizeof(fnbuf));
   else if (have_homedir)
    snprintf(fnbuf, sizeof(fnbuf), "%s/%s", homedir, ROOT_CRL_FILE);
   else
    fnbuf[0] = '\0';


   if (fnbuf[0] != '\0' &&
    X509_STORE_load_locations(cvstore, fnbuf, ((void*)0)) == 1)
   {
    X509_STORE_set_flags(cvstore,
          X509_V_FLAG_CRL_CHECK | X509_V_FLAG_CRL_CHECK_ALL);
   }

   ERR_clear_error();
  }
  have_rootcert = 1;
 }
 else
 {





  if (conn->sslmode[0] == 'v')
  {





   if (fnbuf[0] == '\0')
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("could not get home directory to locate root certificate file\n"
            "Either provide the file or change sslmode to disable server certificate verification.\n"));
   else
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("root certificate file \"%s\" does not exist\n"
            "Either provide the file or change sslmode to disable server certificate verification.\n"), fnbuf);
   SSL_CTX_free(SSL_context);
   return -1;
  }
  have_rootcert = 0;
 }


 if (conn->sslcert && strlen(conn->sslcert) > 0)
  strlcpy(fnbuf, conn->sslcert, sizeof(fnbuf));
 else if (have_homedir)
  snprintf(fnbuf, sizeof(fnbuf), "%s/%s", homedir, USER_CERT_FILE);
 else
  fnbuf[0] = '\0';

 if (fnbuf[0] == '\0')
 {

  have_cert = 0;
 }
 else if (stat(fnbuf, &buf) != 0)
 {





  if (errno != ENOENT && errno != ENOTDIR)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not open certificate file \"%s\": %s\n"),
         fnbuf, strerror_r(errno, sebuf, sizeof(sebuf)));
   SSL_CTX_free(SSL_context);
   return -1;
  }
  have_cert = 0;
 }
 else
 {





  if (SSL_CTX_use_certificate_chain_file(SSL_context, fnbuf) != 1)
  {
   char *err = SSLerrmessage(ERR_get_error());

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not read certificate file \"%s\": %s\n"),
         fnbuf, err);
   SSLerrfree(err);
   SSL_CTX_free(SSL_context);
   return -1;
  }


  have_cert = 1;
 }
 if (!(conn->ssl = SSL_new(SSL_context)) ||
  !SSL_set_app_data(conn->ssl, conn) ||
  !my_SSL_set_fd(conn, conn->sock))
 {
  char *err = SSLerrmessage(ERR_get_error());

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not establish SSL connection: %s\n"),
        err);
  SSLerrfree(err);
  SSL_CTX_free(SSL_context);
  return -1;
 }
 conn->ssl_in_use = 1;






 SSL_CTX_free(SSL_context);
 SSL_context = ((void*)0);







 if (have_cert && conn->sslkey && strlen(conn->sslkey) > 0)
 {
  {

   strlcpy(fnbuf, conn->sslkey, sizeof(fnbuf));
  }
 }
 else if (have_homedir)
 {

  snprintf(fnbuf, sizeof(fnbuf), "%s/%s", homedir, USER_KEY_FILE);
 }
 else
  fnbuf[0] = '\0';

 if (have_cert && fnbuf[0] != '\0')
 {


  if (stat(fnbuf, &buf) != 0)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("certificate present, but not private key file \"%s\"\n"),
         fnbuf);
   return -1;
  }

  if (!S_ISREG(buf.st_mode) || buf.st_mode & (S_IRWXG | S_IRWXO))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("private key file \"%s\" has group or world access; permissions should be u=rw (0600) or less\n"),
         fnbuf);
   return -1;
  }


  if (SSL_use_PrivateKey_file(conn->ssl, fnbuf, SSL_FILETYPE_PEM) != 1)
  {
   char *err = SSLerrmessage(ERR_get_error());

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not load private key file \"%s\": %s\n"),
         fnbuf, err);
   SSLerrfree(err);
   return -1;
  }
 }


 if (have_cert &&
  SSL_check_private_key(conn->ssl) != 1)
 {
  char *err = SSLerrmessage(ERR_get_error());

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("certificate does not match private key file \"%s\": %s\n"),
        fnbuf, err);
  SSLerrfree(err);
  return -1;
 }





 if (have_rootcert)
  SSL_set_verify(conn->ssl, SSL_VERIFY_PEER, verify_cb);
 return 0;
}
