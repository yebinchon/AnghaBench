#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_13__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ smart_str ;
struct TYPE_20__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_21__ {int /*<<< orphan*/  st_size; } ;
struct TYPE_22__ {char* path_translated; int path_translated_len; TYPE_1__ sb; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  ext_len; int /*<<< orphan*/  ext; } ;
struct TYPE_24__ {int content_sender_initialized; int file_fd; int /*<<< orphan*/  sock; TYPE_13__ content_sender; TYPE_2__ request; } ;
typedef  TYPE_4__ php_cli_server_client ;
typedef  int /*<<< orphan*/  php_cli_server_chunk ;
struct TYPE_25__ {int /*<<< orphan*/  poller; } ;
typedef  TYPE_5__ php_cli_server ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  POLLOUT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_5__*,TYPE_4__*,int) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC19(php_cli_server *server, php_cli_server_client *client) /* {{{ */
{
	int fd;
	int status = 200;

	if (client->request.path_translated && FUNC17(client->request.path_translated) != client->request.path_translated_len) {
		/* can't handle paths that contain nul bytes */
		return FUNC11(server, client, 400);
	}

#ifdef PHP_WIN32
	/* The win32 namespace will cut off trailing dots and spaces. Since the
	   VCWD functionality isn't used here, a sophisticated functionality
	   would have to be reimplemented to know ahead there are no files
	   with invalid names there. The simplest is just to forbid invalid
	   filenames, which is done here. */
	if (client->request.path_translated &&
		('.' == client->request.path_translated[client->request.path_translated_len-1] ||
		 ' ' == client->request.path_translated[client->request.path_translated_len-1])) {
		return php_cli_server_send_error_page(server, client, 500);
	}

	fd = client->request.path_translated ? php_win32_ioutil_open(client->request.path_translated, O_RDONLY): -1;
#else
	fd = client->request.path_translated ? FUNC5(client->request.path_translated, O_RDONLY): -1;
#endif
	if (fd < 0) {
		return FUNC11(server, client, 404);
	}

	FUNC8(&client->content_sender);
	client->content_sender_initialized = 1;
	client->file_fd = fd;

	{
		php_cli_server_chunk *chunk;
		smart_str buffer = { 0 };
		const char *mime_type = FUNC4(server, client->request.ext, client->request.ext_len);

		FUNC3(&buffer, client->request.protocol_version, status, 1);
		if (!buffer.s) {
			/* out of memory */
			FUNC9(client, 500, NULL);
			return FAILURE;
		}
		FUNC2(&buffer, client, 1);
		if (mime_type) {
			FUNC14(&buffer, "Content-Type: ", sizeof("Content-Type: ") - 1, 1);
			FUNC15(&buffer, mime_type, 1);
			if (FUNC18(mime_type, "text/", 5) == 0) {
				FUNC15(&buffer, "; charset=UTF-8", 1);
			}
			FUNC14(&buffer, "\r\n", 2, 1);
		}
		FUNC15(&buffer, "Content-Length: ", 1);
		FUNC13(&buffer, client->request.sb.st_size, 1);
		FUNC14(&buffer, "\r\n", 2, 1);
		FUNC14(&buffer, "\r\n", 2, 1);
		chunk = FUNC7(buffer.s, FUNC1(buffer.s), FUNC0(buffer.s));
		if (!chunk) {
			FUNC16(&buffer, 1);
			FUNC9(client, 500, NULL);
			return FAILURE;
		}
		FUNC6(&client->content_sender.buffer, chunk);
	}
	FUNC9(client, 200, NULL);
	FUNC10(&server->poller, POLLOUT, client->sock);
	return SUCCESS;
}