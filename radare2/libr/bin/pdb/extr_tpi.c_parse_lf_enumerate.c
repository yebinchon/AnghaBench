
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name_or_val; } ;
struct TYPE_5__ {int fldattr; } ;
struct TYPE_6__ {int pad; TYPE_3__ enum_value; TYPE_1__ fldattr; } ;
typedef TYPE_2__ SLF_ENUMERATE ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int parse_sval (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ;
 int ut16 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_enumerate(SLF_ENUMERATE *lf_enumerate, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int read_bytes_before = 0, tmp_read_bytes_before = 0;

 lf_enumerate->enum_value.name_or_val = 0;

 read_bytes_before = *read_bytes;
 READ2(*read_bytes, len, lf_enumerate->fldattr.fldattr, leaf_data, ut16);

 tmp_read_bytes_before = *read_bytes;
 parse_sval(&lf_enumerate->enum_value, leaf_data, read_bytes, len);
 leaf_data += (*read_bytes - tmp_read_bytes_before);

 PEEK_READ1(*read_bytes, len, lf_enumerate->pad, leaf_data, ut8);
 PAD_ALIGN(lf_enumerate->pad, *read_bytes, leaf_data, len);





 return (*read_bytes - read_bytes_before);
}
