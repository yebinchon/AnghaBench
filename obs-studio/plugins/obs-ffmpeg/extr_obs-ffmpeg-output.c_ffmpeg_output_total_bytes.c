
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ffmpeg_output {int total_bytes; } ;



__attribute__((used)) static uint64_t ffmpeg_output_total_bytes(void *data)
{
 struct ffmpeg_output *output = data;
 return output->total_bytes;
}
