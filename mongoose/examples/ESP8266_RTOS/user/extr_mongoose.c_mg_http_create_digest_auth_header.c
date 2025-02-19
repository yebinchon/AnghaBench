
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qop ;
typedef int ha1 ;
typedef int cnonce ;


 int cs_md5 (char*,char const*,size_t,char const*,size_t const,char const*,size_t,char const*,size_t const,char const*,size_t,int *) ;
 int mg_mkmd5resp (char const*,scalar_t__,char const*,scalar_t__,char*,int,char const*,scalar_t__,char*,size_t const,char*,scalar_t__,char const*,int,char*) ;
 scalar_t__ mg_time () ;
 int snprintf (char*,size_t,char*,...) ;
 scalar_t__ strlen (char const*) ;

int mg_http_create_digest_auth_header(char *buf, size_t buf_len,
                                      const char *method, const char *uri,
                                      const char *auth_domain, const char *user,
                                      const char *passwd, const char *nonce) {
  static const char colon[] = ":", qop[] = "auth";
  static const size_t one = 1;
  char ha1[33], resp[33], cnonce[40];

  snprintf(cnonce, sizeof(cnonce), "%lx", (unsigned long) mg_time());
  cs_md5(ha1, user, (size_t) strlen(user), colon, one, auth_domain,
         (size_t) strlen(auth_domain), colon, one, passwd,
         (size_t) strlen(passwd), ((void*)0));
  mg_mkmd5resp(method, strlen(method), uri, strlen(uri), ha1, sizeof(ha1) - 1,
               nonce, strlen(nonce), "1", one, cnonce, strlen(cnonce), qop,
               sizeof(qop) - 1, resp);
  return snprintf(buf, buf_len,
                  "Authorization: Digest username=\"%s\","
                  "realm=\"%s\",uri=\"%s\",qop=%s,nc=1,cnonce=%s,"
                  "nonce=%s,response=%s\r\n",
                  user, auth_domain, uri, qop, cnonce, nonce, resp);
}
