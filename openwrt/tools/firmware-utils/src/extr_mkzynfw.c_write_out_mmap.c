
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct zyn_mmt_hdr {int csum; void* user_end; void* user_start; scalar_t__ count; } ;
struct fw_mmap {scalar_t__ addr; } ;
struct csum_state {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int vendor; int model; } ;
typedef int FILE ;


 int BE16_TO_HOST (int ) ;
 int HOST_TO_BE16 (int ) ;
 void* HOST_TO_BE32 (scalar_t__) ;
 int MMAP_DATA_SIZE ;
 TYPE_1__* board ;
 int csum_buf (char*,int) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,int,...) ;
 int write_out_data (int *,char*,int,struct csum_state*) ;

int
write_out_mmap(FILE *outfile, struct fw_mmap *mmap, struct csum_state *css)
{
 struct zyn_mmt_hdr *mh;
 uint8_t buf[MMAP_DATA_SIZE];
 uint32_t user_size;
 char *data;
 int res;

 memset(buf, 0, sizeof(buf));

 mh = (struct zyn_mmt_hdr *)buf;


 mh->count=0;


 data = buf+sizeof(*mh);
 data += sprintf(data, "Vendor 1 %d", board->vendor);
 *data++ = '\0';
 data += sprintf(data, "Model 1 %d", BE16_TO_HOST(board->model));
 *data++ = '\0';

 data += sprintf(data, "HwVerRange 2 %d %d", 0, 0);
 *data++ = '\0';

 user_size = (uint8_t *)data - buf;
 mh->user_start= HOST_TO_BE32(mmap->addr+sizeof(*mh));
 mh->user_end= HOST_TO_BE32(mmap->addr+user_size);
 mh->csum = HOST_TO_BE16(csum_buf(buf+sizeof(*mh), user_size));

 res = write_out_data(outfile, buf, sizeof(buf), css);

 return res;
}
