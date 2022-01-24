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
typedef  scalar_t__ uint64_t ;
struct session {scalar_t__ id; int /*<<< orphan*/  last_used; } ;
struct mg_str {int dummy; } ;
struct http_message {int dummy; } ;
typedef  int /*<<< orphan*/  ssid_buf ;

/* Variables and functions */
 int NUM_SESSIONS ; 
 int /*<<< orphan*/  SESSION_COOKIE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct mg_str* FUNC1 (struct http_message*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_str*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct session* s_sessions ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct session *FUNC5(struct http_message *hm) {
  char ssid_buf[21];
  char *ssid = ssid_buf;
  struct session *ret = NULL;
  struct mg_str *cookie_header = FUNC1(hm, "cookie");
  if (cookie_header == NULL) goto clean;
  if (!FUNC2(cookie_header, SESSION_COOKIE_NAME, &ssid,
                             sizeof(ssid_buf))) {
    goto clean;
  }
  uint64_t sid = FUNC4(ssid, NULL, 16);
  int i;
  for (i = 0; i < NUM_SESSIONS; i++) {
    if (s_sessions[i].id == sid) {
      s_sessions[i].last_used = FUNC3();
      ret = &s_sessions[i];
      goto clean;
    }
  }

clean:
  if (ssid != ssid_buf) {
    FUNC0(ssid);
  }
  return ret;
}