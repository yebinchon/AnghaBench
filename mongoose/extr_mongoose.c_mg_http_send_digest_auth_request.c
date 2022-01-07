
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_printf (struct mg_connection*,char*,char const*,unsigned long) ;
 scalar_t__ mg_time () ;

void mg_http_send_digest_auth_request(struct mg_connection *c,
                                      const char *domain) {
  mg_printf(c,
            "HTTP/1.1 401 Unauthorized\r\n"
            "WWW-Authenticate: Digest qop=\"auth\", "
            "realm=\"%s\", nonce=\"%lx\"\r\n"
            "Content-Length: 0\r\n\r\n",
            domain, (unsigned long) mg_time());
}
