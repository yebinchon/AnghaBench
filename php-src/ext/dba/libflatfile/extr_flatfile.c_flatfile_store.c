
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int fp; } ;
typedef TYPE_1__ flatfile ;
struct TYPE_11__ {scalar_t__ dsize; int dptr; } ;
typedef TYPE_2__ datum ;


 int FLATFILE_INSERT ;
 int SEEK_END ;
 int flatfile_delete (TYPE_1__*,TYPE_2__) ;
 scalar_t__ flatfile_findkey (TYPE_1__*,TYPE_2__) ;
 int php_stream_flush (int ) ;
 int php_stream_printf (int ,char*,scalar_t__) ;
 int php_stream_seek (int ,long,int ) ;
 scalar_t__ php_stream_write (int ,int ,scalar_t__) ;

int flatfile_store(flatfile *dba, datum key_datum, datum value_datum, int mode) {
 if (mode == FLATFILE_INSERT) {
  if (flatfile_findkey(dba, key_datum)) {
   return 1;
  }
  php_stream_seek(dba->fp, 0L, SEEK_END);
  php_stream_printf(dba->fp, "%zu\n", key_datum.dsize);
  php_stream_flush(dba->fp);
  if (php_stream_write(dba->fp, key_datum.dptr, key_datum.dsize) < key_datum.dsize) {
   return -1;
  }
  php_stream_printf(dba->fp, "%zu\n", value_datum.dsize);
  php_stream_flush(dba->fp);
  if (php_stream_write(dba->fp, value_datum.dptr, value_datum.dsize) < value_datum.dsize) {
   return -1;
  }
 } else {
  flatfile_delete(dba, key_datum);
  php_stream_printf(dba->fp, "%zu\n", key_datum.dsize);
  php_stream_flush(dba->fp);
  if (php_stream_write(dba->fp, key_datum.dptr, key_datum.dsize) < key_datum.dsize) {
   return -1;
  }
  php_stream_printf(dba->fp, "%zu\n", value_datum.dsize);
  if (php_stream_write(dba->fp, value_datum.dptr, value_datum.dsize) < value_datum.dsize) {
   return -1;
  }
 }

 php_stream_flush(dba->fp);
 return 0;
}
