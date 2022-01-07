
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad; int position; int length; int base_type; } ;
typedef TYPE_1__ SLF_BITFIELD ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_bitfield(SLF_BITFIELD *lf_bitfield, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
 unsigned int tmp_before_read_bytes = *read_bytes;

 READ4(*read_bytes, len, lf_bitfield->base_type, leaf_data, ut32);
 READ1(*read_bytes, len, lf_bitfield->length, leaf_data, ut8);
 READ1(*read_bytes, len, lf_bitfield->position, leaf_data, ut8);

 PEEK_READ1(*read_bytes, len, lf_bitfield->pad, leaf_data, ut8);
 PAD_ALIGN(lf_bitfield->pad, *read_bytes, leaf_data, len);

 return *read_bytes - tmp_before_read_bytes;
}
