#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  sebuf ;
typedef  int /*<<< orphan*/  homedir ;
typedef  int /*<<< orphan*/  fnbuf ;
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_5__ {char* sslcert; char* sslkey; char* sslrootcert; char* sslcrl; char* sslmode; int ssl_in_use; int /*<<< orphan*/  ssl; int /*<<< orphan*/ * sslcompression; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/ * engine; int /*<<< orphan*/  sock; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int MAXPGPATH ; 
 int PG_STRERROR_R_BUFLEN ; 
 char* ROOT_CERT_FILE ; 
 char* ROOT_CRL_FILE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int /*<<< orphan*/  SSL_OP_NO_COMPRESSION ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 char* USER_CERT_FILE ; 
 char* USER_KEY_FILE ; 
 int FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int X509_V_FLAG_CRL_CHECK ; 
 int X509_V_FLAG_CRL_CHECK_ALL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC31 (char*,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC33 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC34 (char*,struct stat*) ; 
 char* FUNC35 (char*,char) ; 
 char* FUNC36 (char*) ; 
 char* FUNC37 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*,int) ; 
 scalar_t__ FUNC39 (char*) ; 
 int /*<<< orphan*/  verify_cb ; 

__attribute__((used)) static int
FUNC40(PGconn *conn)
{
	SSL_CTX    *SSL_context;
	struct stat buf;
	char		homedir[MAXPGPATH];
	char		fnbuf[MAXPGPATH];
	char		sebuf[PG_STRERROR_R_BUFLEN];
	bool		have_homedir;
	bool		have_cert;
	bool		have_rootcert;
	EVP_PKEY   *pkey = NULL;

	/*
	 * We'll need the home directory if any of the relevant parameters are
	 * defaulted.  If pqGetHomeDirectory fails, act as though none of the
	 * files could be found.
	 */
	if (!(conn->sslcert && FUNC39(conn->sslcert) > 0) ||
		!(conn->sslkey && FUNC39(conn->sslkey) > 0) ||
		!(conn->sslrootcert && FUNC39(conn->sslrootcert) > 0) ||
		!(conn->sslcrl && FUNC39(conn->sslcrl) > 0))
		have_homedir = FUNC31(homedir, sizeof(homedir));
	else						/* won't need it */
		have_homedir = false;

	/*
	 * Create a new SSL_CTX object.
	 *
	 * We used to share a single SSL_CTX between all connections, but it was
	 * complicated if connections used different certificates. So now we
	 * create a separate context for each connection, and accept the overhead.
	 */
	SSL_context = FUNC10(FUNC24());
	if (!SSL_context)
	{
		char	   *err = FUNC23(FUNC6());

		FUNC32(&conn->errorMessage,
						  FUNC29("could not create SSL context: %s\n"),
						  err);
		FUNC22(err);
		return -1;
	}

	/* Disable old protocol versions */
	FUNC12(SSL_context, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

	/*
	 * Disable OpenSSL's moving-write-buffer sanity check, because it causes
	 * unnecessary failures in nonblocking send cases.
	 */
	FUNC11(SSL_context, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);

	/*
	 * If the root cert file exists, load it so we can perform certificate
	 * verification. If sslmode is "verify-full" we will also do further
	 * verification after the connection has been completed.
	 */
	if (conn->sslrootcert && FUNC39(conn->sslrootcert) > 0)
		FUNC38(fnbuf, conn->sslrootcert, sizeof(fnbuf));
	else if (have_homedir)
		FUNC33(fnbuf, sizeof(fnbuf), "%s/%s", homedir, ROOT_CERT_FILE);
	else
		fnbuf[0] = '\0';

	if (fnbuf[0] != '\0' &&
		FUNC34(fnbuf, &buf) == 0)
	{
		X509_STORE *cvstore;

		if (FUNC9(SSL_context, fnbuf, NULL) != 1)
		{
			char	   *err = FUNC23(FUNC6());

			FUNC32(&conn->errorMessage,
							  FUNC29("could not read root certificate file \"%s\": %s\n"),
							  fnbuf, err);
			FUNC22(err);
			FUNC7(SSL_context);
			return -1;
		}

		if ((cvstore = FUNC8(SSL_context)) != NULL)
		{
			if (conn->sslcrl && FUNC39(conn->sslcrl) > 0)
				FUNC38(fnbuf, conn->sslcrl, sizeof(fnbuf));
			else if (have_homedir)
				FUNC33(fnbuf, sizeof(fnbuf), "%s/%s", homedir, ROOT_CRL_FILE);
			else
				fnbuf[0] = '\0';

			/* Set the flags to check against the complete CRL chain */
			if (fnbuf[0] != '\0' &&
				FUNC26(cvstore, fnbuf, NULL) == 1)
			{
				FUNC27(cvstore,
									 X509_V_FLAG_CRL_CHECK | X509_V_FLAG_CRL_CHECK_ALL);
			}
			/* if not found, silently ignore;  we do not require CRL */
			FUNC5();
		}
		have_rootcert = true;
	}
	else
	{
		/*
		 * stat() failed; assume root file doesn't exist.  If sslmode is
		 * verify-ca or verify-full, this is an error.  Otherwise, continue
		 * without performing any server cert verification.
		 */
		if (conn->sslmode[0] == 'v')	/* "verify-ca" or "verify-full" */
		{
			/*
			 * The only way to reach here with an empty filename is if
			 * pqGetHomeDirectory failed.  That's a sufficiently unusual case
			 * that it seems worth having a specialized error message for it.
			 */
			if (fnbuf[0] == '\0')
				FUNC32(&conn->errorMessage,
								  FUNC29("could not get home directory to locate root certificate file\n"
												"Either provide the file or change sslmode to disable server certificate verification.\n"));
			else
				FUNC32(&conn->errorMessage,
								  FUNC29("root certificate file \"%s\" does not exist\n"
												"Either provide the file or change sslmode to disable server certificate verification.\n"), fnbuf);
			FUNC7(SSL_context);
			return -1;
		}
		have_rootcert = false;
	}

	/* Read the client certificate file */
	if (conn->sslcert && FUNC39(conn->sslcert) > 0)
		FUNC38(fnbuf, conn->sslcert, sizeof(fnbuf));
	else if (have_homedir)
		FUNC33(fnbuf, sizeof(fnbuf), "%s/%s", homedir, USER_CERT_FILE);
	else
		fnbuf[0] = '\0';

	if (fnbuf[0] == '\0')
	{
		/* no home directory, proceed without a client cert */
		have_cert = false;
	}
	else if (FUNC34(fnbuf, &buf) != 0)
	{
		/*
		 * If file is not present, just go on without a client cert; server
		 * might or might not accept the connection.  Any other error,
		 * however, is grounds for complaint.
		 */
		if (errno != ENOENT && errno != ENOTDIR)
		{
			FUNC32(&conn->errorMessage,
							  FUNC29("could not open certificate file \"%s\": %s\n"),
							  fnbuf, FUNC37(errno, sebuf, sizeof(sebuf)));
			FUNC7(SSL_context);
			return -1;
		}
		have_cert = false;
	}
	else
	{
		/*
		 * Cert file exists, so load it. Since OpenSSL doesn't provide the
		 * equivalent of "SSL_use_certificate_chain_file", we have to load it
		 * into the SSL context, rather than the SSL object.
		 */
		if (FUNC13(SSL_context, fnbuf) != 1)
		{
			char	   *err = FUNC23(FUNC6());

			FUNC32(&conn->errorMessage,
							  FUNC29("could not read certificate file \"%s\": %s\n"),
							  fnbuf, err);
			FUNC22(err);
			FUNC7(SSL_context);
			return -1;
		}

		/* need to load the associated private key, too */
		have_cert = true;
	}

	/*
	 * The SSL context is now loaded with the correct root and client
	 * certificates. Create a connection-specific SSL object. The private key
	 * is loaded directly into the SSL object. (We could load the private key
	 * into the context, too, but we have done it this way historically, and
	 * it doesn't really matter.)
	 */
	if (!(conn->ssl = FUNC16(SSL_context)) ||
		!FUNC17(conn->ssl, conn) ||
		!FUNC30(conn, conn->sock))
	{
		char	   *err = FUNC23(FUNC6());

		FUNC32(&conn->errorMessage,
						  FUNC29("could not establish SSL connection: %s\n"),
						  err);
		FUNC22(err);
		FUNC7(SSL_context);
		return -1;
	}
	conn->ssl_in_use = true;

	/*
	 * SSL contexts are reference counted by OpenSSL. We can free it as soon
	 * as we have created the SSL object, and it will stick around for as long
	 * as it's actually needed.
	 */
	FUNC7(SSL_context);
	SSL_context = NULL;

	/*
	 * Read the SSL key. If a key is specified, treat it as an engine:key
	 * combination if there is colon present - we don't support files with
	 * colon in the name. The exception is if the second character is a colon,
	 * in which case it can be a Windows filename with drive specification.
	 */
	if (have_cert && conn->sslkey && FUNC39(conn->sslkey) > 0)
	{
#ifdef USE_SSL_ENGINE
		if (strchr(conn->sslkey, ':')
#ifdef WIN32
			&& conn->sslkey[1] != ':'
#endif
			)
		{
			/* Colon, but not in second character, treat as engine:key */
			char	   *engine_str = strdup(conn->sslkey);
			char	   *engine_colon;

			if (engine_str == NULL)
			{
				printfPQExpBuffer(&conn->errorMessage,
								  libpq_gettext("out of memory\n"));
				return -1;
			}

			/* cannot return NULL because we already checked before strdup */
			engine_colon = strchr(engine_str, ':');

			*engine_colon = '\0';	/* engine_str now has engine name */
			engine_colon++;		/* engine_colon now has key name */

			conn->engine = ENGINE_by_id(engine_str);
			if (conn->engine == NULL)
			{
				char	   *err = SSLerrmessage(ERR_get_error());

				printfPQExpBuffer(&conn->errorMessage,
								  libpq_gettext("could not load SSL engine \"%s\": %s\n"),
								  engine_str, err);
				SSLerrfree(err);
				free(engine_str);
				return -1;
			}

			if (ENGINE_init(conn->engine) == 0)
			{
				char	   *err = SSLerrmessage(ERR_get_error());

				printfPQExpBuffer(&conn->errorMessage,
								  libpq_gettext("could not initialize SSL engine \"%s\": %s\n"),
								  engine_str, err);
				SSLerrfree(err);
				ENGINE_free(conn->engine);
				conn->engine = NULL;
				free(engine_str);
				return -1;
			}

			pkey = ENGINE_load_private_key(conn->engine, engine_colon,
										   NULL, NULL);
			if (pkey == NULL)
			{
				char	   *err = SSLerrmessage(ERR_get_error());

				printfPQExpBuffer(&conn->errorMessage,
								  libpq_gettext("could not read private SSL key \"%s\" from engine \"%s\": %s\n"),
								  engine_colon, engine_str, err);
				SSLerrfree(err);
				ENGINE_finish(conn->engine);
				ENGINE_free(conn->engine);
				conn->engine = NULL;
				free(engine_str);
				return -1;
			}
			if (SSL_use_PrivateKey(conn->ssl, pkey) != 1)
			{
				char	   *err = SSLerrmessage(ERR_get_error());

				printfPQExpBuffer(&conn->errorMessage,
								  libpq_gettext("could not load private SSL key \"%s\" from engine \"%s\": %s\n"),
								  engine_colon, engine_str, err);
				SSLerrfree(err);
				ENGINE_finish(conn->engine);
				ENGINE_free(conn->engine);
				conn->engine = NULL;
				free(engine_str);
				return -1;
			}

			free(engine_str);

			fnbuf[0] = '\0';	/* indicate we're not going to load from a
								 * file */
		}
		else
#endif							/* USE_SSL_ENGINE */
		{
			/* PGSSLKEY is not an engine, treat it as a filename */
			FUNC38(fnbuf, conn->sslkey, sizeof(fnbuf));
		}
	}
	else if (have_homedir)
	{
		/* No PGSSLKEY specified, load default file */
		FUNC33(fnbuf, sizeof(fnbuf), "%s/%s", homedir, USER_KEY_FILE);
	}
	else
		fnbuf[0] = '\0';

	if (have_cert && fnbuf[0] != '\0')
	{
		/* read the client key from file */

		if (FUNC34(fnbuf, &buf) != 0)
		{
			FUNC32(&conn->errorMessage,
							  FUNC29("certificate present, but not private key file \"%s\"\n"),
							  fnbuf);
			return -1;
		}
#ifndef WIN32
		if (!FUNC25(buf.st_mode) || buf.st_mode & (S_IRWXG | S_IRWXO))
		{
			FUNC32(&conn->errorMessage,
							  FUNC29("private key file \"%s\" has group or world access; permissions should be u=rw (0600) or less\n"),
							  fnbuf);
			return -1;
		}
#endif

		if (FUNC21(conn->ssl, fnbuf, SSL_FILETYPE_PEM) != 1)
		{
			char	   *err = FUNC23(FUNC6());

			FUNC32(&conn->errorMessage,
							  FUNC29("could not load private key file \"%s\": %s\n"),
							  fnbuf, err);
			FUNC22(err);
			return -1;
		}
	}

	/* verify that the cert and key go together */
	if (have_cert &&
		FUNC14(conn->ssl) != 1)
	{
		char	   *err = FUNC23(FUNC6());

		FUNC32(&conn->errorMessage,
						  FUNC29("certificate does not match private key file \"%s\": %s\n"),
						  fnbuf, err);
		FUNC22(err);
		return -1;
	}

	/*
	 * If a root cert was loaded, also set our certificate verification
	 * callback.
	 */
	if (have_rootcert)
		FUNC19(conn->ssl, SSL_VERIFY_PEER, verify_cb);

	/*
	 * Set compression option if the OpenSSL version used supports it (from
	 * 1.0.0 on).
	 */
#ifdef SSL_OP_NO_COMPRESSION
	if (conn->sslcompression && conn->sslcompression[0] == '0')
		SSL_set_options(conn->ssl, SSL_OP_NO_COMPRESSION);

	/*
	 * Mainline OpenSSL introduced SSL_clear_options() before
	 * SSL_OP_NO_COMPRESSION, so this following #ifdef should not be
	 * necessary, but some old NetBSD version have a locally modified libssl
	 * that has SSL_OP_NO_COMPRESSION but not SSL_clear_options().
	 */
#ifdef HAVE_SSL_CLEAR_OPTIONS
	else
		SSL_clear_options(conn->ssl, SSL_OP_NO_COMPRESSION);
#endif
#endif

	return 0;
}