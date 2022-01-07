
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct mg_str {int dummy; } ;
struct mbuf {int len; int buf; } ;
typedef int pass ;
typedef int cases ;


 int ASSERT_EQ (int,int) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int ) ;
 int memcmp (int ,char*,int) ;
 int memset (char const*,int ,int) ;
 int mg_basic_auth_header (struct mg_str,struct mg_str,struct mbuf*) ;
 struct mg_str mg_mk_str (char*) ;
 struct mg_str mg_mk_str_n (int *,int ) ;
 int mg_parse_http_basic_auth (struct mg_str*,char const*,int,char const*,int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static const char *test_basic_auth_helpers() {
  struct mbuf buf;
  mbuf_init(&buf, 0);
  mg_basic_auth_header(mg_mk_str("foo"), mg_mk_str("bar"), &buf);
  ASSERT_EQ(buf.len, 35);
  ASSERT_EQ(memcmp(buf.buf, "Authorization: Basic Zm9vOmJhcg==\r\n", 35), 0);

  buf.len = 0;
  mg_basic_auth_header(mg_mk_str("foo:bar"), mg_mk_str_n(((void*)0), 0), &buf);
  ASSERT_EQ(buf.len, 35);
  ASSERT_EQ(memcmp(buf.buf, "Authorization: Basic Zm9vOmJhcg==\r\n", 35), 0);

  mbuf_free(&buf);

  {
    char user[256];
    char pass[256];
    size_t i;

    struct {
      const char *hdr;
      const char *user;
      const char *pass;
      int res;
    } cases[] = {
        {"Basic Zm9vOmJhcg==", "foo", "bar", 0},
        {"Basic Zm9v", "foo", "", 0},
        {"Basic Zm9vOmJhcjpiYXo=", "foo", "bar:baz", 0},
        {"Basic Zm9vOg==", "foo", "", 0},
        {"Basic OmJhcg==", "", "", -1},
    };

    for (i = 0; i < sizeof(cases) / sizeof(cases[0]); i++) {
      struct mg_str hdr = mg_mk_str(cases[i].hdr);
      int res;

      memset(user, 0, sizeof(user));
      memset(pass, 0, sizeof(pass));
      res = mg_parse_http_basic_auth(&hdr, user, sizeof(user), pass,
                                     sizeof(pass));
      ASSERT_EQ(res, cases[i].res);
      ASSERT_EQ(strcmp(user, cases[i].user), 0);
      ASSERT_EQ(strcmp(pass, cases[i].pass), 0);
    }
  }
  return ((void*)0);
}
