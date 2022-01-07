
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avail_in; size_t avail_out; int * next_out; } ;
typedef TYPE_1__ z_stream ;
struct TYPE_6__ {size_t size; size_t used; char* aptr; char* data; size_t free; int member_4; int member_3; int member_2; int * member_1; int * member_0; } ;
typedef TYPE_2__ php_zlib_buffer ;
typedef int Bytef ;


 int Z_BUF_ERROR ;
 int Z_DATA_ERROR ;
 int Z_MEM_ERROR ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int efree (char*) ;
 char* erealloc (char*,int) ;
 char* erealloc_recoverable (char*,size_t) ;
 int fprintf (int ,char*,int,int,size_t,size_t,size_t,size_t,size_t) ;
 int inflate (TYPE_1__*,int ) ;
 int stderr ;

__attribute__((used)) static inline int php_zlib_inflate_rounds(z_stream *Z, size_t max, char **buf, size_t *len)
{
 int status, round = 0;
 php_zlib_buffer buffer = {((void*)0), ((void*)0), 0, 0, 0};

 *buf = ((void*)0);
 *len = 0;

 buffer.size = (max && (max < Z->avail_in)) ? max : Z->avail_in;

 do {
  if ((max && (max <= buffer.used)) || !(buffer.aptr = erealloc_recoverable(buffer.data, buffer.size))) {
   status = Z_MEM_ERROR;
  } else {
   buffer.data = buffer.aptr;
   Z->avail_out = buffer.free = buffer.size - buffer.used;
   Z->next_out = (Bytef *) buffer.data + buffer.used;



   status = inflate(Z, Z_NO_FLUSH);

   buffer.used += buffer.free - Z->avail_out;
   buffer.free = Z->avail_out;



   buffer.size += (buffer.size >> 3) + 1;
  }
 } while ((Z_BUF_ERROR == status || (Z_OK == status && Z->avail_in)) && ++round < 100);

 if (status == Z_STREAM_END) {
  buffer.data = erealloc(buffer.data, buffer.used + 1);
  buffer.data[buffer.used] = '\0';
  *buf = buffer.data;
  *len = buffer.used;
 } else {
  if (buffer.data) {
   efree(buffer.data);
  }


  status = (status == Z_OK) ? Z_DATA_ERROR : status;
 }
 return status;
}
