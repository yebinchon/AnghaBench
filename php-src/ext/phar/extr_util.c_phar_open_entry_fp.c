
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
typedef int php_stream_filter ;
struct TYPE_24__ {int writefilters; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_25__ {scalar_t__ fp_type; int old_flags; int flags; int crc32; int offset; int filename; scalar_t__ uncompressed_filesize; int compressed_filesize; int tmp; scalar_t__ fp; scalar_t__ is_modified; scalar_t__ link; TYPE_4__* phar; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_26__ {TYPE_1__* fp; int zero; TYPE_4__* phar; TYPE_2__* internal_file; } ;
typedef TYPE_3__ phar_entry_data ;
struct TYPE_27__ {int fname; } ;
typedef TYPE_4__ phar_archive_data ;


 scalar_t__ FAILURE ;
 int PHAR_ENT_COMPRESSION_MASK ;
 scalar_t__ PHAR_FP ;
 scalar_t__ PHAR_TMP ;
 int PHAR_UFP ;
 int SEEK_END ;
 int SEEK_SET ;
 int STREAM_MUST_SEEK ;
 int SUCCESS ;
 char* phar_decompress_filter (TYPE_2__*,int) ;
 TYPE_1__* phar_get_entrypfp (TYPE_2__*) ;
 TYPE_1__* phar_get_entrypufp (TYPE_2__*) ;
 int phar_get_fp_offset (TYPE_2__*) ;
 TYPE_2__* phar_get_link_source (TYPE_2__*) ;
 void* phar_get_pharfp (TYPE_4__*) ;
 scalar_t__ phar_open_archive_fp (TYPE_4__*) ;
 scalar_t__ phar_postprocess_file (TYPE_3__*,int ,char**,int) ;
 int phar_set_entrypufp (TYPE_2__*,int ) ;
 int phar_set_fp_type (TYPE_2__*,int ,scalar_t__) ;
 int php_stream_copy_to_stream_ex (TYPE_1__*,TYPE_1__*,int ,int *) ;
 int php_stream_filter_append (int *,int *) ;
 int * php_stream_filter_create (char*,int *,int ) ;
 int php_stream_filter_flush (int *,int) ;
 int php_stream_filter_remove (int *,int) ;
 int php_stream_flush (TYPE_1__*) ;
 int php_stream_fopen_tmpfile () ;
 scalar_t__ php_stream_open_wrapper (int ,char*,int,int *) ;
 int php_stream_seek (TYPE_1__*,int ,int ) ;
 scalar_t__ php_stream_tell (TYPE_1__*) ;
 int spprintf (char**,int,char*,int ,...) ;

int phar_open_entry_fp(phar_entry_info *entry, char **error, int follow_links)
{
 php_stream_filter *filter;
 phar_archive_data *phar = entry->phar;
 char *filtername;
 zend_off_t loc;
 php_stream *ufp;
 phar_entry_data dummy;

 if (follow_links && entry->link) {
  phar_entry_info *link_entry = phar_get_link_source(entry);
  if (link_entry && link_entry != entry) {
   return phar_open_entry_fp(link_entry, error, 1);
  }
 }

 if (entry->is_modified) {
  return SUCCESS;
 }

 if (entry->fp_type == PHAR_TMP) {
  if (!entry->fp) {
   entry->fp = php_stream_open_wrapper(entry->tmp, "rb", STREAM_MUST_SEEK|0, ((void*)0));
  }
  return SUCCESS;
 }

 if (entry->fp_type != PHAR_FP) {

  return SUCCESS;
 }

 if (!phar_get_pharfp(phar)) {
  if (FAILURE == phar_open_archive_fp(phar)) {
   spprintf(error, 4096, "phar error: Cannot open phar archive \"%s\" for reading", phar->fname);
   return FAILURE;
  }
 }

 if ((entry->old_flags && !(entry->old_flags & PHAR_ENT_COMPRESSION_MASK)) || !(entry->flags & PHAR_ENT_COMPRESSION_MASK)) {
  dummy.internal_file = entry;
  dummy.phar = phar;
  dummy.zero = entry->offset;
  dummy.fp = phar_get_pharfp(phar);
  if (FAILURE == phar_postprocess_file(&dummy, entry->crc32, error, 1)) {
   return FAILURE;
  }
  return SUCCESS;
 }

 if (!phar_get_entrypufp(entry)) {
  phar_set_entrypufp(entry, php_stream_fopen_tmpfile());
  if (!phar_get_entrypufp(entry)) {
   spprintf(error, 4096, "phar error: Cannot open temporary file for decompressing phar archive \"%s\" file \"%s\"", phar->fname, entry->filename);
   return FAILURE;
  }
 }

 dummy.internal_file = entry;
 dummy.phar = phar;
 dummy.zero = entry->offset;
 dummy.fp = phar_get_pharfp(phar);
 if (FAILURE == phar_postprocess_file(&dummy, entry->crc32, error, 1)) {
  return FAILURE;
 }

 ufp = phar_get_entrypufp(entry);

 if ((filtername = phar_decompress_filter(entry, 0)) != ((void*)0)) {
  filter = php_stream_filter_create(filtername, ((void*)0), 0);
 } else {
  filter = ((void*)0);
 }

 if (!filter) {
  spprintf(error, 4096, "phar error: unable to read phar \"%s\" (cannot create %s filter while decompressing file \"%s\")", phar->fname, phar_decompress_filter(entry, 1), entry->filename);
  return FAILURE;
 }



 php_stream_seek(ufp, 0, SEEK_END);
 loc = php_stream_tell(ufp);
 php_stream_filter_append(&ufp->writefilters, filter);
 php_stream_seek(phar_get_entrypfp(entry), phar_get_fp_offset(entry), SEEK_SET);

 if (entry->uncompressed_filesize) {
  if (SUCCESS != php_stream_copy_to_stream_ex(phar_get_entrypfp(entry), ufp, entry->compressed_filesize, ((void*)0))) {
   spprintf(error, 4096, "phar error: internal corruption of phar \"%s\" (actual filesize mismatch on file \"%s\")", phar->fname, entry->filename);
   php_stream_filter_remove(filter, 1);
   return FAILURE;
  }
 }

 php_stream_filter_flush(filter, 1);
 php_stream_flush(ufp);
 php_stream_filter_remove(filter, 1);

 if (php_stream_tell(ufp) - loc != (zend_off_t) entry->uncompressed_filesize) {
  spprintf(error, 4096, "phar error: internal corruption of phar \"%s\" (actual filesize mismatch on file \"%s\")", phar->fname, entry->filename);
  return FAILURE;
 }

 entry->old_flags = entry->flags;


 phar_set_fp_type(entry, PHAR_UFP, loc);
 dummy.zero = entry->offset;
 dummy.fp = ufp;
 if (FAILURE == phar_postprocess_file(&dummy, entry->crc32, error, 0)) {
  return FAILURE;
 }
 return SUCCESS;
}
