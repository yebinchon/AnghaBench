
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int st_size; } ;
struct TYPE_8__ {TYPE_1__ sb; } ;
typedef TYPE_2__ php_stream_statbuf ;
struct TYPE_9__ {int size; } ;
typedef TYPE_3__ php_stream_sqlite3_data ;
struct TYPE_10__ {scalar_t__ abstract; } ;
typedef TYPE_4__ php_stream ;



__attribute__((used)) static int php_sqlite3_stream_stat(php_stream *stream, php_stream_statbuf *ssb)
{
 php_stream_sqlite3_data *sqlite3_stream = (php_stream_sqlite3_data *) stream->abstract;
 ssb->sb.st_size = sqlite3_stream->size;
 return 0;
}
