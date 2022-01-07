
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fp; int CurrentFlatFilePos; } ;
typedef TYPE_1__ flatfile ;
struct TYPE_6__ {char* dptr; size_t dsize; } ;
typedef TYPE_2__ datum ;


 size_t FLATFILE_BLOCK_SIZE ;
 size_t atoi (char*) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char* erealloc (char*,size_t) ;
 int php_stream_eof (int ) ;
 int php_stream_gets (int ,char*,int) ;
 size_t php_stream_read (int ,char*,size_t) ;
 int php_stream_rewind (int ) ;
 int php_stream_tell (int ) ;

datum flatfile_firstkey(flatfile *dba) {
 datum res;
 size_t num;
 size_t buf_size = FLATFILE_BLOCK_SIZE;
 char *buf = emalloc(buf_size);

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
  num = php_stream_read(dba->fp, buf, num);

  if (*(buf) != 0) {
   dba->CurrentFlatFilePos = php_stream_tell(dba->fp);
   res.dptr = buf;
   res.dsize = num;
   return res;
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
 res.dptr = ((void*)0);
 res.dsize = 0;
 return res;
}
