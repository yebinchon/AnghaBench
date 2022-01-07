
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct serializer {int dummy; } ;
struct TYPE_2__ {size_t num; int * array; } ;
struct array_output_data {TYPE_1__ bytes; } ;


 int array_output_serializer_init (struct serializer*,struct array_output_data*) ;
 int * bmemdup (int const*,size_t) ;
 int get_sps_pps (int const*,size_t,int const**,size_t*,int const**,size_t*) ;
 int has_start_code (int const*) ;
 int s_w8 (struct serializer*,int) ;
 int s_wb16 (struct serializer*,int ) ;
 int s_write (struct serializer*,int const*,size_t) ;

size_t obs_parse_avc_header(uint8_t **header, const uint8_t *data, size_t size)
{
 struct array_output_data output;
 struct serializer s;
 const uint8_t *sps = ((void*)0), *pps = ((void*)0);
 size_t sps_size = 0, pps_size = 0;

 array_output_serializer_init(&s, &output);

 if (size <= 6)
  return 0;

 if (!has_start_code(data)) {
  *header = bmemdup(data, size);
  return size;
 }

 get_sps_pps(data, size, &sps, &sps_size, &pps, &pps_size);
 if (!sps || !pps || sps_size < 4)
  return 0;

 s_w8(&s, 0x01);
 s_write(&s, sps + 1, 3);
 s_w8(&s, 0xff);
 s_w8(&s, 0xe1);

 s_wb16(&s, (uint16_t)sps_size);
 s_write(&s, sps, sps_size);
 s_w8(&s, 0x01);
 s_wb16(&s, (uint16_t)pps_size);
 s_write(&s, pps, pps_size);

 *header = output.bytes.array;
 return output.bytes.num;
}
