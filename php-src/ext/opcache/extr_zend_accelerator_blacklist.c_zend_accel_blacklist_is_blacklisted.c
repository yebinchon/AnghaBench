
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int re; } ;
typedef TYPE_1__ zend_regexp_list ;
typedef int zend_bool ;
struct TYPE_5__ {TYPE_1__* regexp_list; } ;
typedef TYPE_2__ zend_blacklist ;
typedef int pcre2_match_data ;
typedef int pcre2_match_context ;
typedef int PCRE2_SPTR ;


 int pcre2_match (int ,int ,size_t,int ,int ,int *,int *) ;
 int * php_pcre_create_match_data (int ,int ) ;
 int php_pcre_free_match_data (int *) ;
 int * php_pcre_mctx () ;

zend_bool zend_accel_blacklist_is_blacklisted(zend_blacklist *blacklist, char *verify_path, size_t verify_path_len)
{
 int ret = 0;
 zend_regexp_list *regexp_list_it = blacklist->regexp_list;
 pcre2_match_context *mctx = php_pcre_mctx();

 if (regexp_list_it == ((void*)0)) {
  return 0;
 }
 while (regexp_list_it != ((void*)0)) {
  pcre2_match_data *match_data = php_pcre_create_match_data(0, regexp_list_it->re);
  if (!match_data) {

   continue;
  }
  int rc = pcre2_match(regexp_list_it->re, (PCRE2_SPTR)verify_path, verify_path_len, 0, 0, match_data, mctx);
  if (rc >= 0) {
   ret = 1;
   php_pcre_free_match_data(match_data);
   break;
  }
  php_pcre_free_match_data(match_data);
  regexp_list_it = regexp_list_it->next;
 }
 return ret;
}
