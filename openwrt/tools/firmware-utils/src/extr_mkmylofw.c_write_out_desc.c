
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mylo_fw_blockdesc {int dummy; } ;
typedef int FILE ;


 int write_out_data (int *,int *,int,int *) ;

int
write_out_desc(FILE *outfile, struct mylo_fw_blockdesc *desc, uint32_t *crc)
{
 return write_out_data(outfile, (uint8_t *)desc,
  sizeof(*desc), crc);
}
