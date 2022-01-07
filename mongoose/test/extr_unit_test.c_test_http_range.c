
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int ASSERT_STREQ (char*,char*) ;
 int ASSERT_STREQ_NZ (char*,char*) ;
 int FETCH_BUF_SIZE ;
 int fetch_http (char*,char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static const char *test_http_range(void) {
  char buf[FETCH_BUF_SIZE];

  fetch_http(buf, "%s", "GET /data/range.txt HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 200 OK");
  ASSERT(strstr(buf, "Content-Length: 312\r\n") != 0);


  fetch_http(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=5-10\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 206 Partial Content");
  ASSERT(strstr(buf, "Content-Length: 6\r\n") != 0);
  ASSERT(strstr(buf, "Content-Range: bytes 5-10/312\r\n") != 0);
  ASSERT_STREQ(buf + strlen(buf) - 8, "\r\n of co");


  fetch_http(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=300-\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 206 Partial Content");
  ASSERT(strstr(buf, "Content-Length: 12\r\n") != 0);
  ASSERT(strstr(buf, "Content-Range: bytes 300-311/312\r\n") != 0);
  ASSERT_STREQ(buf + strlen(buf) - 14, "\r\nis disease.\n");


  fetch_http(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=1000-\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 416");
  ASSERT(strstr(buf, "Content-Length: 0\r\n") != 0);
  ASSERT(strstr(buf, "Content-Range: bytes */312\r\n") != 0);


  fetch_http(buf, "%s", "GET /data/range.txt HTTP/1.0\nRange: bytes=0-312\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 416");

  return ((void*)0);
}
