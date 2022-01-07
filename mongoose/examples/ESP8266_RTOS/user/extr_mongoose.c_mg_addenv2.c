
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_cgi_env_block {int dummy; } ;


 char* getenv (char const*) ;
 int mg_addenv (struct mg_cgi_env_block*,char*,char const*,char const*) ;

__attribute__((used)) static void mg_addenv2(struct mg_cgi_env_block *blk, const char *name) {
  const char *s;
  if ((s = getenv(name)) != ((void*)0)) mg_addenv(blk, "%s=%s", name, s);
}
