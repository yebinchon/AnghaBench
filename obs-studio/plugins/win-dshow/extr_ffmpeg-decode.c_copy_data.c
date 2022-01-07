
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ffmpeg_decode {size_t packet_size; int packet_buffer; } ;


 size_t INPUT_BUFFER_PADDING_SIZE ;
 int brealloc (int ,size_t) ;
 int memcpy (int ,int *,size_t) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static inline void copy_data(struct ffmpeg_decode *decode, uint8_t *data,
        size_t size)
{
 size_t new_size = size + INPUT_BUFFER_PADDING_SIZE;

 if (decode->packet_size < new_size) {
  decode->packet_buffer =
   brealloc(decode->packet_buffer, new_size);
  decode->packet_size = new_size;
 }

 memset(decode->packet_buffer + size, 0, INPUT_BUFFER_PADDING_SIZE);
 memcpy(decode->packet_buffer, data, size);
}
