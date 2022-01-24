#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct listening_socket_s {unsigned int sock; char* key; scalar_t__ type; } ;
struct TYPE_3__ {unsigned int used; struct listening_socket_s* data; } ;

/* Variables and functions */
 scalar_t__ FPM_AF_UNIX ; 
 int FPM_CLEANUP_PARENT_EXEC ; 
 int FPM_CLEANUP_PARENT_EXIT_MAIN ; 
 int FPM_ENV_SOCKET_SET_MAX ; 
 unsigned int FPM_ENV_SOCKET_SET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__ sockets_list ; 
 scalar_t__ FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(int which, void *arg) /* {{{ */
{
	unsigned i;
	unsigned socket_set_count = 0;
	unsigned socket_set[FPM_ENV_SOCKET_SET_MAX];
	unsigned socket_set_buf = 0;
	char envname[32];
	char *env_value = 0;
	int p = 0;
	struct listening_socket_s *ls = sockets_list.data;

	for (i = 0; i < sockets_list.used; i++, ls++) {
		if (which != FPM_CLEANUP_PARENT_EXEC) {
			FUNC0(ls->sock);
		} else { /* on PARENT EXEC we want socket fds to be inherited through environment variable */
			char fd[32];
			FUNC5(fd, "%d", ls->sock);

			socket_set_buf = (i % FPM_ENV_SOCKET_SET_SIZE == 0 && i) ? 1 : 0;
			env_value = FUNC3(env_value, p + (p ? 1 : 0) + FUNC7(ls->key) + 1 + FUNC7(fd) + socket_set_buf + 1);

			if (i % FPM_ENV_SOCKET_SET_SIZE == 0) {
				socket_set[socket_set_count] = p + socket_set_buf;
				socket_set_count++;
				if (i) {
					*(env_value + p + 1) = 0;
				}
			}

			p += FUNC5(env_value + p + socket_set_buf, "%s%s=%s", (p && !socket_set_buf) ? "," : "", ls->key, fd);
			p += socket_set_buf;
		}

		if (which == FPM_CLEANUP_PARENT_EXIT_MAIN) {
			if (ls->type == FPM_AF_UNIX) {
				FUNC8(ls->key);
			}
		}
		FUNC2(ls->key);
	}

	if (env_value) {
		for (i = 0; i < socket_set_count; i++) {
			if (!i) {
				FUNC6(envname, "FPM_SOCKETS");
			} else {
				FUNC5(envname, "FPM_SOCKETS_%d", i);
			}
			FUNC4(envname, env_value + socket_set[i], 1);
		}
		FUNC2(env_value);
	}

	FUNC1(&sockets_list);
}