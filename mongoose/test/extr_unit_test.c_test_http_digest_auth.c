
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
typedef int nonce ;
typedef int auth_hdr ;


 int ASSERT_GT (int ,int ) ;
 int ASSERT_STREQ (char*,char*) ;
 int ASSERT_STREQ_NZ (char*,char*) ;
 int FETCH_BUF_SIZE ;
 int fetch_http (char*,char*,char*) ;
 int fetch_http2 (char*,char*,char*,char*) ;
 int mg_http_create_digest_auth_header (char*,int,char*,char*,char*,char*,char*,char*) ;
 int mg_http_parse_header (struct mg_str*,char*,char*,int) ;
 struct mg_str mg_mk_str (char*) ;
 int sprintf (char*,char*,unsigned long) ;
 int strlen (char*) ;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static const char *test_http_digest_auth(void) {
  char buf[FETCH_BUF_SIZE], auth_hdr[200];
  char nonce[40];
  struct mg_str bufstr;


  fetch_http(buf, "%s", "GET /data/auth/a.txt?a=b HTTP/1.0\r\n\r\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");
  bufstr = mg_mk_str(buf);
  ASSERT_GT(mg_http_parse_header(&bufstr, "nonce", nonce, sizeof(nonce)), 0);
  buf[0] = '\0';

  fetch_http(buf, "%s", "GET /secret HTTP/1.0\r\n\r\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");
  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/a.txt?a=b", "foo.com", "joe",
                                    "doe", nonce);
  fetch_http(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 200");
  ASSERT_STREQ(buf + strlen(buf) - 7, "\r\n\r\nhi\n");
  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/secret", "foo.com", "joe", "doe", nonce);
  fetch_http(buf, "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 200");
  ASSERT_STREQ(buf + strlen(buf) - 7, "Secret!");


  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/a.txt?a=b", "foo.com", "joe",
                                    "doe", nonce);
  fetch_http2(buf, "data/auth/non-existing-passwords.txt",
              "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 200");
  ASSERT_STREQ(buf + strlen(buf) - 7, "\r\n\r\nhi\n");
  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/secret", "foo.com", "joe", "doe", nonce);
  fetch_http2(buf, "data/auth/non-existing-passwords.txt",
              "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");


  {




    unsigned long nonce_val = strtoul(nonce, ((void*)0), 16);
    sprintf(nonce, "%lx", nonce_val + 10);

    mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/data/auth/a.txt?a=b", "foo.com", "joe",
                                      "doe", nonce);
    fetch_http(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n",
               auth_hdr);
    ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");

    mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/secret", "foo.com", "joe", "doe",
                                      nonce);

    fetch_http(buf, "GET /secret HTTP/1.0\r\n%s\r\n\r\n", auth_hdr);
    ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");


    sprintf(nonce, "%lx", nonce_val - 60 * 60);

    mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                      "/data/auth/a.txt?a=b", "foo.com", "joe",
                                      "doe", nonce);
    fetch_http(buf, "GET /data/auth/a.txt?a=b HTTP/1.0\r\n%s\r\n\r\n",
               auth_hdr);
    ASSERT_STREQ_NZ(buf, "HTTP/1.1 401");


    bufstr = mg_mk_str(buf);
    ASSERT_GT(mg_http_parse_header(&bufstr, "nonce", nonce, sizeof(nonce)), 0);
  }


  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/p%61sswords%2etxt", "foo.com",
                                    "joe", "doe", nonce);
  fetch_http(buf,
             "GET /data/auth/p%%61sswords%%2etxt HTTP/1.0\r\n"
             "%s\r\n\r\n",
             auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 404");

  mg_http_create_digest_auth_header(auth_hdr, sizeof(auth_hdr), "GET",
                                    "/data/auth/Passwords.txt", "foo.com",
                                    "joe", "doe", nonce);
  fetch_http(buf,
             "GET /data/auth/Passwords.txt HTTP/1.0\r\n"
             "%s\r\n\r\n",
             auth_hdr);
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 404");

  return ((void*)0);
}
