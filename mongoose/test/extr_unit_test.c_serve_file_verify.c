
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_str {int dummy; } ;
struct TYPE_2__ {size_t len; int p; } ;
struct http_message {TYPE_1__ body; } ;
typedef int buf ;


 int ASSERT (int ) ;
 int ASSERT_MG_STREQ (struct mg_str,char*) ;
 int free (char*) ;
 scalar_t__ memcmp (int ,char*,size_t) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 char* read_file (char*,size_t*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *serve_file_verify(struct http_message *hm) {
  size_t size;
  char *data = read_file("unit_test.c", &size);
  if (data == ((void*)0) || size != hm->body.len ||
      memcmp(hm->body.p, data, size) != 0) {
    return "wrong data";
  }
  free(data);

  {
    char buf[20];
    struct mg_str *h = mg_get_http_header(hm, "Content-Length");
    ASSERT(h != ((void*)0));
    snprintf(buf, sizeof(buf), "%d", (int) hm->body.len);
    ASSERT_MG_STREQ(*h, buf);
  }
  {
    struct mg_str *h = mg_get_http_header(hm, "Connection");
    ASSERT(h != ((void*)0));
    ASSERT_MG_STREQ(*h, "keep-alive");
  }
  return "success";
}
