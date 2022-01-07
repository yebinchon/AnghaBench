
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtmp_stream {int rtmp; int output; } ;


 scalar_t__ RTMP_Write (int *,char*,int,int) ;
 int bfree (int *) ;
 int flv_meta_data (int ,int **,size_t*,int,size_t) ;

__attribute__((used)) static bool send_meta_data(struct rtmp_stream *stream, size_t idx, bool *next)
{
 uint8_t *meta_data;
 size_t meta_data_size;
 bool success = 1;

 *next = flv_meta_data(stream->output, &meta_data, &meta_data_size,
         0, idx);

 if (*next) {
  success = RTMP_Write(&stream->rtmp, (char *)meta_data,
         (int)meta_data_size, (int)idx) >= 0;
  bfree(meta_data);
 }

 return success;
}
