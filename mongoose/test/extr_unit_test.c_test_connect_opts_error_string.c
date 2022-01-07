
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_connect_opts {char const** error_string; } ;
typedef int opts ;


 int ASSERT (int ) ;
 int ASSERT_STREQ (char const*,char*) ;
 int cb6 ;
 int memset (struct mg_connect_opts*,int ,int) ;
 struct mg_connection* mg_connect_opt (struct mg_mgr*,char*,int ,struct mg_connect_opts) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;

__attribute__((used)) static const char *test_connect_opts_error_string(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_connect_opts opts;
  const char *error_string = ((void*)0);

  memset(&opts, 0, sizeof(opts));
  opts.error_string = &error_string;

  mg_mgr_init(&mgr, ((void*)0));
  ASSERT((nc = mg_connect_opt(&mgr, "127.0.0.1:65537", cb6, opts)) == ((void*)0));
  ASSERT(error_string != ((void*)0));
  ASSERT_STREQ(error_string, "cannot parse address");
  mg_mgr_free(&mgr);
  return ((void*)0);
}
