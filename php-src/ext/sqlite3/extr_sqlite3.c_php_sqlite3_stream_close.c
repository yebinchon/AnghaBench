
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blob; } ;
typedef TYPE_1__ php_stream_sqlite3_data ;
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 scalar_t__ SQLITE_OK ;
 int efree (TYPE_1__*) ;
 scalar_t__ sqlite3_blob_close (int ) ;

__attribute__((used)) static int php_sqlite3_stream_close(php_stream *stream, int close_handle)
{
 php_stream_sqlite3_data *sqlite3_stream = (php_stream_sqlite3_data *) stream->abstract;

 if (sqlite3_blob_close(sqlite3_stream->blob) != SQLITE_OK) {

 }

 efree(sqlite3_stream);

 return 0;
}
