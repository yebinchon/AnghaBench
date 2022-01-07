
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union socket_address {int dummy; } socket_address ;
typedef int host ;


 int ASSERT (int) ;
 int ASSERT_EQ (int,int const) ;


 int mg_parse_address (char const*,union socket_address*,int*,char*,int) ;

__attribute__((used)) static const char *test_parse_address(void) {
  static const char *valid[] = {
    "1",
    "1.2.3.4:1",
    "tcp://123",
    "udp://0.0.0.0:99",

    "tcp://localhost:99",

    ":8080",




    ((void*)0)
  };
  static const int protos[] = {
    128,
    128,
    128,
    129,
    128,
    128





  };
  static const char *need_lookup[] = {"udp://a.com:53", "locl_host:12", ((void*)0)};
  static const char *invalid[] = {
      "99999", "1k", "1.2.3", "1.2.3.4:", "1.2.3.4:2p", "blah://12", ":123x",
      "veeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeery.long:12345",
      "udp://missingport", ((void*)0)};
  char host[50];
  union socket_address sa;
  int i, proto;

  for (i = 0; valid[i] != ((void*)0); i++) {
    ASSERT(mg_parse_address(valid[i], &sa, &proto, host, sizeof(host)) > 0);
    ASSERT_EQ(proto, protos[i]);
  }

  for (i = 0; invalid[i] != ((void*)0); i++) {
    ASSERT_EQ(mg_parse_address(invalid[i], &sa, &proto, host, sizeof(host)),
              -1);
  }

  for (i = 0; need_lookup[i] != ((void*)0); i++) {
    ASSERT_EQ(mg_parse_address(need_lookup[i], &sa, &proto, host, sizeof(host)),
              0);
  }

  return ((void*)0);
}
