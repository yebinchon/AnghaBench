
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fp; } ;
typedef TYPE_1__ flatfile ;
struct TYPE_6__ {size_t dsize; void* dptr; } ;
typedef TYPE_2__ datum ;


 size_t FLATFILE_BLOCK_SIZE ;
 size_t atoi (char*) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char* erealloc (char*,size_t) ;
 int memcmp (char*,void*,size_t) ;
 int php_stream_eof (int ) ;
 int php_stream_gets (int ,char*,int) ;
 size_t php_stream_read (int ,char*,size_t) ;
 int php_stream_rewind (int ) ;

int flatfile_findkey(flatfile *dba, datum key_datum) {
 size_t buf_size = FLATFILE_BLOCK_SIZE;
 char *buf = emalloc(buf_size);
 size_t num;
 int ret=0;
 void *key = key_datum.dptr;
 size_t size = key_datum.dsize;

 php_stream_rewind(dba->fp);
 while (!php_stream_eof(dba->fp)) {
  if (!php_stream_gets(dba->fp, buf, 15)) {
   break;
  }
  num = atoi(buf);
  if (num >= buf_size) {
   buf_size = num + FLATFILE_BLOCK_SIZE;
   buf = erealloc(buf, buf_size);
  }
  num = php_stream_read(dba->fp, buf, num);

  if (size == num) {
   if (!memcmp(buf, key, size)) {
    ret = 1;
    break;
   }
  }
  if (!php_stream_gets(dba->fp, buf, 15)) {
   break;
  }
  num = atoi(buf);
  if (num >= buf_size) {
   buf_size = num + FLATFILE_BLOCK_SIZE;
   buf = erealloc(buf, buf_size);
  }
  num = php_stream_read(dba->fp, buf, num);
 }
 efree(buf);
 return ret;
}
