
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_8__ {scalar_t__ fp_type; int * fp; int tmp; int phar; scalar_t__ link; } ;
typedef TYPE_1__ phar_entry_info ;


 scalar_t__ PHAR_FP ;
 scalar_t__ PHAR_MOD ;
 scalar_t__ PHAR_UFP ;
 int STREAM_MUST_SEEK ;
 int * phar_get_entrypfp (TYPE_1__*) ;
 int * phar_get_entrypufp (TYPE_1__*) ;
 scalar_t__ phar_get_fp_type (TYPE_1__*) ;
 TYPE_1__* phar_get_link_source (TYPE_1__*) ;
 int phar_open_archive_fp (int ) ;
 int * php_stream_open_wrapper (int ,char*,int,int *) ;

php_stream *phar_get_efp(phar_entry_info *entry, int follow_links)
{
 if (follow_links && entry->link) {
  phar_entry_info *link_entry = phar_get_link_source(entry);

  if (link_entry && link_entry != entry) {
   return phar_get_efp(link_entry, 1);
  }
 }

 if (phar_get_fp_type(entry) == PHAR_FP) {
  if (!phar_get_entrypfp(entry)) {

   phar_open_archive_fp(entry->phar);
  }
  return phar_get_entrypfp(entry);
 } else if (phar_get_fp_type(entry) == PHAR_UFP) {
  return phar_get_entrypufp(entry);
 } else if (entry->fp_type == PHAR_MOD) {
  return entry->fp;
 } else {

  if (!entry->fp) {
   entry->fp = php_stream_open_wrapper(entry->tmp, "rb", STREAM_MUST_SEEK|0, ((void*)0));
  }
  return entry->fp;
 }
}
