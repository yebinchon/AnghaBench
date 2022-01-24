#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  username_buf ;
typedef  int /*<<< orphan*/  uri_buf ;
struct mg_str {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct http_message {TYPE_2__ query_string; TYPE_1__ uri; int /*<<< orphan*/  method; } ;
typedef  int /*<<< orphan*/  response_buf ;
typedef  int /*<<< orphan*/  qop_buf ;
typedef  int /*<<< orphan*/  nonce_buf ;
typedef  int /*<<< orphan*/  nc_buf ;
typedef  int /*<<< orphan*/  cnonce_buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 struct mg_str* FUNC3 (struct http_message*,char*) ; 
 scalar_t__ FUNC4 (struct mg_str*,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct http_message *hm, const char *auth_domain,
                              FILE *fp) {
  int ret = 0;
  struct mg_str *hdr;
  char username_buf[50], cnonce_buf[64], response_buf[40], uri_buf[200],
      qop_buf[20], nc_buf[20], nonce_buf[16];

  char *username = username_buf, *cnonce = cnonce_buf, *response = response_buf,
       *uri = uri_buf, *qop = qop_buf, *nc = nc_buf, *nonce = nonce_buf;

  /* Parse "Authorization:" header, fail fast on parse error */
  if (hm == NULL || fp == NULL ||
      (hdr = FUNC3(hm, "Authorization")) == NULL ||
      FUNC4(hdr, "username", &username, sizeof(username_buf)) ==
          0 ||
      FUNC4(hdr, "cnonce", &cnonce, sizeof(cnonce_buf)) == 0 ||
      FUNC4(hdr, "response", &response, sizeof(response_buf)) ==
          0 ||
      FUNC4(hdr, "uri", &uri, sizeof(uri_buf)) == 0 ||
      FUNC4(hdr, "qop", &qop, sizeof(qop_buf)) == 0 ||
      FUNC4(hdr, "nc", &nc, sizeof(nc_buf)) == 0 ||
      FUNC4(hdr, "nonce", &nonce, sizeof(nonce_buf)) == 0 ||
      FUNC2(nonce) == 0) {
    ret = 0;
    goto clean;
  }

  /* NOTE(lsm): due to a bug in MSIE, we do not compare URIs */

  ret = FUNC1(
      hm->method,
      FUNC6(
          hm->uri.p,
          hm->uri.len + (hm->query_string.len ? hm->query_string.len + 1 : 0)),
      FUNC5(username), FUNC5(cnonce), FUNC5(response),
      FUNC5(qop), FUNC5(nc), FUNC5(nonce), FUNC5(auth_domain),
      fp);

clean:
  if (username != username_buf) FUNC0(username);
  if (cnonce != cnonce_buf) FUNC0(cnonce);
  if (response != response_buf) FUNC0(response);
  if (uri != uri_buf) FUNC0(uri);
  if (qop != qop_buf) FUNC0(qop);
  if (nc != nc_buf) FUNC0(nc);
  if (nonce != nonce_buf) FUNC0(nonce);

  return ret;
}