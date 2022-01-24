#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  user_name; TYPE_1__* hba; } ;
struct TYPE_4__ {int auth_method; char* linenumber; char* rawline; } ;
typedef  TYPE_2__ Port ;

/* Variables and functions */
 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ; 
 int ERRCODE_INVALID_PASSWORD ; 
 int /*<<< orphan*/  FATAL ; 
 int STATUS_EOF ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char*,char*) ; 
#define  uaBSD 142 
#define  uaCert 141 
#define  uaGSS 140 
#define  uaIdent 139 
#define  uaImplicitReject 138 
#define  uaLDAP 137 
#define  uaMD5 136 
#define  uaPAM 135 
#define  uaPassword 134 
#define  uaPeer 133 
#define  uaRADIUS 132 
#define  uaReject 131 
#define  uaSCRAM 130 
#define  uaSSPI 129 
#define  uaTrust 128 

__attribute__((used)) static void
FUNC8(Port *port, int status, char *logdetail)
{
	const char *errstr;
	char	   *cdetail;
	int			errcode_return = ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION;

	/*
	 * If we failed due to EOF from client, just quit; there's no point in
	 * trying to send a message to the client, and not much point in logging
	 * the failure in the postmaster log.  (Logging the failure might be
	 * desirable, were it not for the fact that libpq closes the connection
	 * unceremoniously if challenged for a password when it hasn't got one to
	 * send.  We'll get a useless log entry for every psql connection under
	 * password auth, even if it's perfectly successful, if we log STATUS_EOF
	 * events.)
	 */
	if (status == STATUS_EOF)
		FUNC6(0);

	switch (port->hba->auth_method)
	{
		case uaReject:
		case uaImplicitReject:
			errstr = FUNC5("authentication failed for user \"%s\": host rejected");
			break;
		case uaTrust:
			errstr = FUNC5("\"trust\" authentication failed for user \"%s\"");
			break;
		case uaIdent:
			errstr = FUNC5("Ident authentication failed for user \"%s\"");
			break;
		case uaPeer:
			errstr = FUNC5("Peer authentication failed for user \"%s\"");
			break;
		case uaPassword:
		case uaMD5:
		case uaSCRAM:
			errstr = FUNC5("password authentication failed for user \"%s\"");
			/* We use it to indicate if a .pgpass password failed. */
			errcode_return = ERRCODE_INVALID_PASSWORD;
			break;
		case uaGSS:
			errstr = FUNC5("GSSAPI authentication failed for user \"%s\"");
			break;
		case uaSSPI:
			errstr = FUNC5("SSPI authentication failed for user \"%s\"");
			break;
		case uaPAM:
			errstr = FUNC5("PAM authentication failed for user \"%s\"");
			break;
		case uaBSD:
			errstr = FUNC5("BSD authentication failed for user \"%s\"");
			break;
		case uaLDAP:
			errstr = FUNC5("LDAP authentication failed for user \"%s\"");
			break;
		case uaCert:
			errstr = FUNC5("certificate authentication failed for user \"%s\"");
			break;
		case uaRADIUS:
			errstr = FUNC5("RADIUS authentication failed for user \"%s\"");
			break;
		default:
			errstr = FUNC5("authentication failed for user \"%s\": invalid authentication method");
			break;
	}

	cdetail = FUNC7(FUNC0("Connection matched pg_hba.conf line %d: \"%s\""),
					   port->hba->linenumber, port->hba->rawline);
	if (logdetail)
		logdetail = FUNC7("%s\n%s", logdetail, cdetail);
	else
		logdetail = cdetail;

	FUNC1(FATAL,
			(FUNC2(errcode_return),
			 FUNC4(errstr, port->user_name),
			 logdetail ? FUNC3("%s", logdetail) : 0));

	/* doesn't return */
}