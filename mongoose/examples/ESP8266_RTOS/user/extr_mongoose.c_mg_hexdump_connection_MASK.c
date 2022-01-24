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
struct mg_connection {int dummy; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  MG_EV_ACCEPT 132 
#define  MG_EV_CLOSE 131 
#define  MG_EV_CONNECT 130 
#define  MG_EV_RECV 129 
#define  MG_EV_SEND 128 
 int MG_SOCK_STRINGIFY_IP ; 
 int MG_SOCK_STRINGIFY_PORT ; 
 int MG_SOCK_STRINGIFY_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,void*,char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

void FUNC7(struct mg_connection *nc, const char *path,
                           const void *buf, int num_bytes, int ev) {
  FILE *fp = NULL;
  char src[60], dst[60];
  const char *tag = NULL;
  switch (ev) {
    case MG_EV_RECV:
      tag = "<-";
      break;
    case MG_EV_SEND:
      tag = "->";
      break;
    case MG_EV_ACCEPT:
      tag = "<A";
      break;
    case MG_EV_CONNECT:
      tag = "C>";
      break;
    case MG_EV_CLOSE:
      tag = "XX";
      break;
  }
  if (tag == NULL) return; /* Don't log MG_EV_TIMER, etc */

  if (FUNC6(path, "-") == 0) {
    fp = stdout;
  } else if (FUNC6(path, "--") == 0) {
    fp = stderr;
#if MG_ENABLE_FILESYSTEM
  } else {
    fp = mg_fopen(path, "a");
#endif
  }
  if (fp == NULL) return;

  FUNC2(nc, src, sizeof(src),
                      MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
  FUNC2(nc, dst, sizeof(dst), MG_SOCK_STRINGIFY_IP |
                                                MG_SOCK_STRINGIFY_PORT |
                                                MG_SOCK_STRINGIFY_REMOTE);
  FUNC1(fp, "%lu %p %s %s %s %d\n", (unsigned long) FUNC5(), (void *) nc,
          src, tag, dst, (int) num_bytes);
  if (num_bytes > 0) {
    FUNC4(fp, buf, num_bytes);
  }
  if (fp != stdout && fp != stderr) FUNC0(fp);
}