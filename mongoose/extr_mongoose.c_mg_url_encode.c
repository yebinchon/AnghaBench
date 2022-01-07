
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;


 int mg_mk_str (char*) ;
 struct mg_str mg_url_encode_opt (struct mg_str const,int ,int ) ;

struct mg_str mg_url_encode(const struct mg_str src) {
  return mg_url_encode_opt(src, mg_mk_str("._-$,;~()/"), 0);
}
