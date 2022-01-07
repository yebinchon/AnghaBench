
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fp; } ;
typedef TYPE_1__ flatfile ;
struct TYPE_6__ {char* dptr; size_t dsize; } ;
typedef TYPE_2__ datum ;


 int FAILURE ;
 size_t FLATFILE_BLOCK_SIZE ;
 int SEEK_END ;
 int SEEK_SET ;
 int SUCCESS ;
 size_t atoi (char*) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char* erealloc (char*,size_t) ;
 int memcmp (char*,char*,size_t) ;
 int php_stream_eof (int ) ;
 int php_stream_flush (int ) ;
 int php_stream_gets (int ,char*,int) ;
 int php_stream_putc (int ,int ) ;
 size_t php_stream_read (int ,char*,size_t) ;
 int php_stream_rewind (int ) ;
 int php_stream_seek (int ,long,int ) ;
 size_t php_stream_tell (int ) ;

int flatfile_delete(flatfile *dba, datum key_datum) {
 char *key = key_datum.dptr;
 size_t size = key_datum.dsize;
 size_t buf_size = FLATFILE_BLOCK_SIZE;
 char *buf = emalloc(buf_size);
 size_t num;
 size_t pos;

 php_stream_rewind(dba->fp);
 while(!php_stream_eof(dba->fp)) {

  if (!php_stream_gets(dba->fp, buf, 15)) {
   break;
  }
  num = atoi(buf);
  if (num >= buf_size) {
   buf_size = num + FLATFILE_BLOCK_SIZE;
   buf = erealloc(buf, buf_size);
  }
  pos = php_stream_tell(dba->fp);


  num = php_stream_read(dba->fp, buf, num);

  if (size == num && !memcmp(buf, key, size)) {
   php_stream_seek(dba->fp, pos, SEEK_SET);
   php_stream_putc(dba->fp, 0);
   php_stream_flush(dba->fp);
   php_stream_seek(dba->fp, 0L, SEEK_END);
   efree(buf);
   return SUCCESS;
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
 return FAILURE;
}
