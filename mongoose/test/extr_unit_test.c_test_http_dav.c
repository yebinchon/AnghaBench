
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cs_stat_t ;
struct TYPE_2__ {char* enable_directory_listing; } ;


 int ASSERT (int) ;
 int ASSERT_STREQ (char*,char*) ;
 int ASSERT_STREQ_NZ (char*,char*) ;
 int FETCH_BUF_SIZE ;
 int fetch_http (char*,char*,char*) ;
 scalar_t__ mg_stat (char*,int *) ;
 int remove (char*) ;
 int rmdir (char*) ;
 TYPE_1__ s_http_server_opts ;
 int strlen (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static const char *test_http_dav(void) {
  char buf[FETCH_BUF_SIZE];
  cs_stat_t st;

  remove("./data/dav/b.txt");
  rmdir("./data/dav/d");


  s_http_server_opts.enable_directory_listing = "yes";
  fetch_http(buf, "%s", "PROPFIND / HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 207");
  ASSERT(strstr(buf, "a.txt") != ((void*)0));
  ASSERT(strstr(buf, "hidden_file.txt") == ((void*)0));


  fetch_http(buf, "%s", "MKCOL /d HTTP/1.0\nContent-Length:5\n\n12345");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 415");
  fetch_http(buf, "%s", "MKCOL /d HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 201");
  fetch_http(buf, "%s", "MKCOL /d HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 405");
  fetch_http(buf, "%s", "MKCOL /x/d HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 409");


  fetch_http(buf, "%s", "PUT /b.txt HTTP/1.0\nContent-Length: 5\n\n12345");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 201");
  fetch_http(buf, "%s", "GET /data/dav/b.txt HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 200");
  ASSERT(strstr(buf, "Content-Length: 5\r\n") != 0);
  ASSERT_STREQ(buf + strlen(buf) - 7, "\r\n12345");


  fetch_http(buf, "%s", "DELETE /b.txt HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 204");
  ASSERT(mg_stat("./data/dav/b.txt", &st) != 0);
  fetch_http(buf, "%s", "DELETE /d HTTP/1.0\n\n");
  ASSERT(mg_stat("./data/dav/d", &st) != 0);


  fetch_http(buf, "%s", "PROPFIND /__blah.txt HTTP/1.0\n\n");
  ASSERT_STREQ_NZ(buf, "HTTP/1.1 404");

  return ((void*)0);
}
