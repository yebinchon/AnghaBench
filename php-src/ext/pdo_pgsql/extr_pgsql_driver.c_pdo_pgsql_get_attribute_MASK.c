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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  server; int /*<<< orphan*/  disable_prepares; int /*<<< orphan*/  emulate_prepares; } ;
typedef  TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
#define  CONNECTION_AUTH_OK 141 
#define  CONNECTION_AWAITING_RESPONSE 140 
#define  CONNECTION_BAD 139 
#define  CONNECTION_MADE 138 
#define  CONNECTION_OK 137 
#define  CONNECTION_SETENV 136 
#define  CONNECTION_SSL_STARTUP 135 
#define  CONNECTION_STARTED 134 
#define  PDO_ATTR_CLIENT_VERSION 133 
#define  PDO_ATTR_CONNECTION_STATUS 132 
#define  PDO_ATTR_EMULATE_PREPARES 131 
#define  PDO_ATTR_SERVER_INFO 130 
#define  PDO_ATTR_SERVER_VERSION 129 
#define  PDO_PGSQL_ATTR_DISABLE_PREPARES 128 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 char* PG_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int,char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC13(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;

	switch (attr) {
		case PDO_ATTR_EMULATE_PREPARES:
			FUNC8(return_value, H->emulate_prepares);
			break;

		case PDO_PGSQL_ATTR_DISABLE_PREPARES:
			FUNC8(return_value, H->disable_prepares);
			break;

		case PDO_ATTR_CLIENT_VERSION:
			FUNC10(return_value, PG_VERSION);
			break;

		case PDO_ATTR_SERVER_VERSION:
			if (FUNC5(H->server) >= 3) { /* PostgreSQL 7.4 or later */
				FUNC10(return_value, (char*)FUNC4(H->server, "server_version"));
			} else /* emulate above via a query */
			{
				PGresult *res = FUNC2(H->server, "SELECT VERSION()");
				if (res && FUNC6(res) == PGRES_TUPLES_OK) {
					FUNC10(return_value, (char *)FUNC3(res, 0, 0));
				}

				if (res) {
					FUNC1(res);
				}
			}
			break;

		case PDO_ATTR_CONNECTION_STATUS:
			switch (FUNC7(H->server)) {
				case CONNECTION_STARTED:
					FUNC11(return_value, "Waiting for connection to be made.", sizeof("Waiting for connection to be made.")-1);
					break;

				case CONNECTION_MADE:
				case CONNECTION_OK:
					FUNC11(return_value, "Connection OK; waiting to send.", sizeof("Connection OK; waiting to send.")-1);
					break;

				case CONNECTION_AWAITING_RESPONSE:
					FUNC11(return_value, "Waiting for a response from the server.", sizeof("Waiting for a response from the server.")-1);
					break;

				case CONNECTION_AUTH_OK:
					FUNC11(return_value, "Received authentication; waiting for backend start-up to finish.", sizeof("Received authentication; waiting for backend start-up to finish.")-1);
					break;
#ifdef CONNECTION_SSL_STARTUP
				case CONNECTION_SSL_STARTUP:
					FUNC11(return_value, "Negotiating SSL encryption.", sizeof("Negotiating SSL encryption.")-1);
					break;
#endif
				case CONNECTION_SETENV:
					FUNC11(return_value, "Negotiating environment-driven parameter settings.", sizeof("Negotiating environment-driven parameter settings.")-1);
					break;

				case CONNECTION_BAD:
				default:
					FUNC11(return_value, "Bad connection.", sizeof("Bad connection.")-1);
					break;
			}
			break;

		case PDO_ATTR_SERVER_INFO: {
			int spid = FUNC0(H->server);


			zend_string *str_info =
				FUNC12(0,
					"PID: %d; Client Encoding: %s; Is Superuser: %s; Session Authorization: %s; Date Style: %s",
					spid,
					(char*)FUNC4(H->server, "client_encoding"),
					(char*)FUNC4(H->server, "is_superuser"),
					(char*)FUNC4(H->server, "session_authorization"),
					(char*)FUNC4(H->server, "DateStyle"));

			FUNC9(return_value, str_info);
		}
			break;

		default:
			return 0;
	}

	return 1;
}