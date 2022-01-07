
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ position; scalar_t__ size; int blob; } ;
typedef TYPE_1__ php_stream_sqlite3_data ;
struct TYPE_5__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ sqlite3_blob_read (int ,char*,size_t,size_t) ;

__attribute__((used)) static ssize_t php_sqlite3_stream_read(php_stream *stream, char *buf, size_t count)
{
 php_stream_sqlite3_data *sqlite3_stream = (php_stream_sqlite3_data *) stream->abstract;

 if (sqlite3_stream->position + count >= sqlite3_stream->size) {
  count = sqlite3_stream->size - sqlite3_stream->position;
  stream->eof = 1;
 }
 if (count) {
  if (sqlite3_blob_read(sqlite3_stream->blob, buf, count, sqlite3_stream->position) != SQLITE_OK) {
   return -1;
  }
  sqlite3_stream->position += count;
 }
 return count;
}
