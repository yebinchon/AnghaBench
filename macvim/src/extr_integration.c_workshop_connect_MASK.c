#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_un {int sin_port; int /*<<< orphan*/  sun_path; void* sun_family; int /*<<< orphan*/  sin_addr; void* sin_family; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  server ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  XtPointer ;
typedef  int /*<<< orphan*/  XtAppContext ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_UNIX ; 
 int BUFSIZ ; 
 scalar_t__ ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTOCOL_VERSION ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ XtInputReadMask ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/ * dfd ; 
 int /*<<< orphan*/  dummy ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 struct hostent* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inputHandler ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  messageFromEserve ; 
 int sd ; 
 int FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int /*<<< orphan*/ ) ; 

void	FUNC20(XtAppContext context)
{
#ifdef INET_SOCKETS
	struct sockaddr_in	server;
	struct hostent *	host;
	int			port;
#else
	struct sockaddr_un	server;
#endif
	char			buf[32];
	char *			address;
#ifdef DEBUG
	char			*file;
#endif

	address = FUNC7(FUNC0("SPRO_EDITOR_SOCKET"));
	if (address == NULL) {
		return;
	}

#ifdef INET_SOCKETS
	port = atoi(address);

	if ((sd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
		PERROR(NOCATGETS("workshop_connect"));
		return;
	}

	/* Get the server internet address and put into addr structure */
	/* fill in the socket address structure and connect to server */
	vim_memset((char *)&server, '\0', sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = port;
	if ((host = gethostbyname(NOCATGETS("localhost"))) == NULL) {
		PERROR(NOCATGETS("gethostbyname"));
		sd = -1;
		return;
	}
	memcpy((char *)&server.sin_addr, host->h_addr, host->h_length);
#else
	if ((sd = FUNC10(AF_UNIX, SOCK_STREAM, 0)) == -1) {
		FUNC1(FUNC0("workshop_connect"));
		return;
	}

	server.sun_family = AF_UNIX;
	FUNC11(server.sun_path, address);
#endif
	/* Connect to server */
	if (FUNC5(sd, (struct sockaddr *)&server, sizeof(server))) {
		if (errno == ECONNREFUSED) {
			FUNC4(sd);
#ifdef INET_SOCKETS
			if ((sd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
				PERROR(NOCATGETS("workshop_connect"));
				return;
			}
#else
			if ((sd = FUNC10(AF_UNIX, SOCK_STREAM, 0)) == -1) {
				FUNC1(FUNC0("workshop_connect"));
				return;
			}
#endif
			if (FUNC5(sd, (struct sockaddr *)&server,
						sizeof(server))) {
				FUNC1(FUNC0("workshop_connect"));
				return;
			}

		} else {
			FUNC1(FUNC0("workshop_connect"));
			return;
		}
	}

	/* tell notifier we are interested in being called
	 * when there is input on the editor connection socket
	 */
	inputHandler = FUNC2(context, sd, (XtPointer) XtInputReadMask,
				     messageFromEserve, NULL);
#ifdef DEBUG
	if ((file = getenv(NOCATGETS("SPRO_PLUGIN_DEBUG"))) != NULL) {
		char buf[BUFSIZ];

		unlink(file);
		vim_snprintf(buf, sizeof(buf), "date > %s", file);
		system(buf);
		dfd = fopen(file, "a");
	} else {
		dfd = NULL;
	}
#endif

	FUNC16(buf, sizeof(buf), FUNC0("connected %s %s %s\n"),
		FUNC17(),
		PROTOCOL_VERSION,
		FUNC18());
	dummy = FUNC19(sd, buf, FUNC12(buf));

	FUNC16(buf, sizeof(buf), FUNC0("ack 1\n"));
	dummy = FUNC19(sd, buf, FUNC12(buf));
}