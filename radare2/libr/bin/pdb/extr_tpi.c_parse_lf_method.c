
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {int pad; TYPE_2__ name; int mlist; int count; } ;
typedef TYPE_1__ SLF_METHOD ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int parse_sctring (TYPE_2__*,unsigned char*,unsigned int*,unsigned int) ;
 int ut16 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_method(SLF_METHOD *lf_method, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int read_bytes_before = *read_bytes, tmp_read_bytes_before = 0;

 lf_method->name.name = 0;

 READ2(*read_bytes, len, lf_method->count, leaf_data, ut16);
 READ4(*read_bytes, len, lf_method->mlist, leaf_data, ut32);

 tmp_read_bytes_before = *read_bytes;
 parse_sctring(&lf_method->name, leaf_data, read_bytes, len);
 leaf_data += (*read_bytes - tmp_read_bytes_before);

 PEEK_READ1(*read_bytes, len, lf_method->pad, leaf_data, ut8);
 PAD_ALIGN(lf_method->pad, *read_bytes, leaf_data, len);



 return *read_bytes - read_bytes_before;
}
