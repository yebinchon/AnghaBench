
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_off_t ;
typedef int php_stream ;
struct TYPE_10__ {scalar_t__ fp_type; int offset; int * fp; int * cfp; int filename; TYPE_1__* phar; int uncompressed_filesize; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_9__ {int fname; } ;


 scalar_t__ FAILURE ;
 scalar_t__ PHAR_FP ;
 scalar_t__ PHAR_MOD ;
 int SEEK_SET ;
 scalar_t__ SUCCESS ;
 int efree (char*) ;
 int phar_get_efp (TYPE_2__*,int ) ;
 TYPE_2__* phar_get_link_source (TYPE_2__*) ;
 scalar_t__ phar_open_entry_fp (TYPE_2__*,char**,int) ;
 int phar_seek_efp (TYPE_2__*,int ,int ,int ,int) ;
 scalar_t__ php_stream_copy_to_stream_ex (int ,int *,int ,int *) ;
 int php_stream_tell (int *) ;
 int spl_ce_UnexpectedValueException ;
 int zend_throw_exception_ex (int ,int ,char*,int ,int ,...) ;

__attribute__((used)) static int phar_copy_file_contents(phar_entry_info *entry, php_stream *fp)
{
 char *error;
 zend_off_t offset;
 phar_entry_info *link;

 if (FAILURE == phar_open_entry_fp(entry, &error, 1)) {
  if (error) {
   zend_throw_exception_ex(spl_ce_UnexpectedValueException, 0,
    "Cannot convert phar archive \"%s\", unable to open entry \"%s\" contents: %s", entry->phar->fname, entry->filename, error);
   efree(error);
  } else {
   zend_throw_exception_ex(spl_ce_UnexpectedValueException, 0,
    "Cannot convert phar archive \"%s\", unable to open entry \"%s\" contents", entry->phar->fname, entry->filename);
  }
  return FAILURE;
 }


 phar_seek_efp(entry, 0, SEEK_SET, 0, 1);
 offset = php_stream_tell(fp);
 link = phar_get_link_source(entry);

 if (!link) {
  link = entry;
 }

 if (SUCCESS != php_stream_copy_to_stream_ex(phar_get_efp(link, 0), fp, link->uncompressed_filesize, ((void*)0))) {
  zend_throw_exception_ex(spl_ce_UnexpectedValueException, 0,
   "Cannot convert phar archive \"%s\", unable to copy entry \"%s\" contents", entry->phar->fname, entry->filename);
  return FAILURE;
 }

 if (entry->fp_type == PHAR_MOD) {

  entry->cfp = entry->fp;
  entry->fp = ((void*)0);
 }


 entry->fp_type = PHAR_FP;
 entry->offset = offset;
 return SUCCESS;
}
