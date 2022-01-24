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
struct mg_str {int dummy; } ;
typedef  int /*<<< orphan*/  nonce ;
typedef  int /*<<< orphan*/  auth_hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FETCH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_str*,char*,char*,int) ; 
 struct mg_str FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned long) ; 
 int FUNC9 (char*) ; 
 unsigned long FUNC10 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const char *FUNC11(void) {
  char buf[FETCH_BUF_SIZE], auth_hdr[200];
  char nonce[40];
  struct mg_str bufstr;

  /* Test digest authorization popup - per-directory auth file */
  FUNC3(buf, "%s", "GET /data/auth/a.txt?a=b HTTP/1.0\r\n\r\n");
  FUNC2(buf, "HTTP/1.1 401");
  bufstr = FUNC7(buf);
  FUNC0(FUNC6(&bufstr, "nonce", nonce, sizeof(nonce)), 0);
  buf[0] = '\0';
  /* Per-endpoint auth config */
  FUNC3(buf, "%s", "GET /secret HTTP/1.0\r\n\r\n");
  FUNC2(buf, "HTTP/1.1 401");
#if MG_ENABLE_HTTP_STREAMING_MULTIPART
  fetch_http(buf, "%s",
             "POST /secret/upload HTTP/1.0\r\n"
             "Content-Type: multipart/form-data;boundary=omgwtf\r\n"
             "\r\n--omgwtf\r\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");
#endif

  /* Test digest authorization success */
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/a.txt?a=b", "foo.com", "joe",
                                    "doe", nonce);
  FUNC3(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  FUNC2(buf, "HTTP/1.1 200");
  FUNC1(buf + FUNC9(buf) - 7, "\r\n\r\nhi\n");
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/secret", "foo.com", "joe", "doe", nonce);
  FUNC3(buf, "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  FUNC2(buf, "HTTP/1.1 200");
  FUNC1(buf + FUNC9(buf) - 7, "Secret!");

  /* Test digest authorization failure with non-existing passwords file */
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/a.txt?a=b", "foo.com", "joe",
                                    "doe", nonce);
  FUNC4(buf, "data/auth/non-existing-passwords.txt",
              "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  FUNC2(buf, "HTTP/1.1 200");
  FUNC1(buf + FUNC9(buf) - 7, "\r\n\r\nhi\n");
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/secret", "foo.com", "joe", "doe", nonce);
  FUNC4(buf, "data/auth/non-existing-passwords.txt",
              "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  FUNC2(buf, "HTTP/1.1 401");

  /* Test digest authorization failure with old nonce */
  {
    /*
     * Add 10 seconds to the nonce value, so that it'll be in the future
     * and mg_check_nonce() should fail.
     */
    unsigned long nonce_val = FUNC10(nonce, NULL, 16);
    FUNC8(nonce, "%lx", nonce_val + 10);

    FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/data/auth/a.txt?a=b", "foo.com", "joe",
                                      "doe", nonce);
    FUNC3(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n",
               auth_hdr);
    FUNC2(buf, "HTTP/1.1 401");

    FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/secret", "foo.com", "joe", "doe",
                                      nonce);

    FUNC3(buf, "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
    FUNC2(buf, "HTTP/1.1 401");

    /* Make nonce 1-hour-old, so mg_check_nonce() should fail again. */
    FUNC8(nonce, "%lx", nonce_val - 60 * 60);

    FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/data/auth/a.txt?a=b", "foo.com", "joe",
                                      "doe", nonce);
    FUNC3(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n",
               auth_hdr);
    FUNC2(buf, "HTTP/1.1 401");

    /* Renew nonce to represent the actual nonce from the server */
    bufstr = FUNC7(buf);
    FUNC0(FUNC6(&bufstr, "nonce", nonce, sizeof(nonce)), 0);
  }

  /* Test that passwords file is hidden from view */
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/p%61sswords%2etxt", "foo.com",
                                    "joe", "doe", nonce);
  FUNC3(buf,
             "GET /data/auth/p%%61sswords%%2etxt HTTP/1.0\r\n"
             "%s\r\n\r\n",
             auth_hdr);
  FUNC2(buf, "HTTP/1.1 404");
  /* On case-insensitive filesystems too. */
  FUNC5(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/Passwords.txt", "foo.com",
                                    "joe", "doe", nonce);
  FUNC3(buf,
             "GET /data/auth/Passwords.txt HTTP/1.0\r\n"
             "%s\r\n\r\n",
             auth_hdr);
  FUNC2(buf, "HTTP/1.1 404");

  return NULL;
}