
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int re; struct TYPE_6__* path; } ;
typedef TYPE_1__ zend_regexp_list ;
typedef TYPE_1__ zend_blacklist_entry ;
struct TYPE_7__ {int pos; TYPE_1__* regexp_list; TYPE_1__* entries; } ;
typedef TYPE_3__ zend_blacklist ;


 int free (TYPE_1__*) ;
 int pcre2_code_free (int ) ;

void zend_accel_blacklist_shutdown(zend_blacklist *blacklist)
{
 zend_blacklist_entry *p = blacklist->entries, *end = blacklist->entries + blacklist->pos;

 while (p<end) {
  free(p->path);
  p++;
 }
 free(blacklist->entries);
 blacklist->entries = ((void*)0);
 if (blacklist->regexp_list) {
  zend_regexp_list *temp, *it = blacklist->regexp_list;
  while (it) {
   pcre2_code_free(it->re);
   temp = it;
   it = it->next;
   free(temp);
  }
 }
}
