
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_4__ {scalar_t__ fpos; scalar_t__ fsize; int * data; } ;
typedef TYPE_1__ php_stream_memory_data ;
struct TYPE_5__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int assert (int ) ;
 int memcpy (char*,int *,size_t) ;

__attribute__((used)) static ssize_t php_stream_memory_read(php_stream *stream, char *buf, size_t count)
{
 php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
 assert(ms != ((void*)0));

 if (ms->fpos == ms->fsize) {
  stream->eof = 1;
  count = 0;
 } else {
  if (ms->fpos + count >= ms->fsize) {
   count = ms->fsize - ms->fpos;
  }
  if (count) {
   assert(ms->data!= ((void*)0));
   assert(buf!= ((void*)0));
   memcpy(buf, ms->data+ms->fpos, count);
   ms->fpos += count;
  }
 }
 return count;
}
