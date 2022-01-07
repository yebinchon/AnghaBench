
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int p; scalar_t__ len; } ;
typedef int buf ;
typedef int FILE ;


 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int * fgets (char*,int,int *) ;
 int mg_mkmd5resp (int ,scalar_t__,int ,scalar_t__,char*,int ,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,char*) ;
 scalar_t__ mg_ncasecmp (int ,char*,int ) ;
 scalar_t__ mg_vcmp (struct mg_str*,char*) ;
 int sscanf (char*,char*,char*,char*,char*) ;
 int strlen (char*) ;

int mg_check_digest_auth(struct mg_str method, struct mg_str uri,
                         struct mg_str username, struct mg_str cnonce,
                         struct mg_str response, struct mg_str qop,
                         struct mg_str nc, struct mg_str nonce,
                         struct mg_str auth_domain, FILE *fp) {
  char buf[128], f_user[sizeof(buf)], f_ha1[sizeof(buf)], f_domain[sizeof(buf)];
  char exp_resp[33];






  while (fgets(buf, sizeof(buf), fp) != ((void*)0)) {
    if (sscanf(buf, "%[^:]:%[^:]:%s", f_user, f_domain, f_ha1) == 3 &&
        mg_vcmp(&username, f_user) == 0 &&
        mg_vcmp(&auth_domain, f_domain) == 0) {

      mg_mkmd5resp(method.p, method.len, uri.p, uri.len, f_ha1, strlen(f_ha1),
                   nonce.p, nonce.len, nc.p, nc.len, cnonce.p, cnonce.len,
                   qop.p, qop.len, exp_resp);
      LOG(LL_DEBUG, ("%.*s %s %.*s %s", (int) username.len, username.p,
                     f_domain, (int) response.len, response.p, exp_resp));
      return mg_ncasecmp(response.p, exp_resp, strlen(exp_resp)) == 0;
    }
  }


  return 0;
}
