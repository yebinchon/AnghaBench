
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name_or_val; } ;
struct TYPE_5__ {int fldattr; } ;
struct TYPE_6__ {int pad; TYPE_3__ offset; int index; TYPE_1__ fldattr; } ;
typedef TYPE_2__ SLF_MEMBER ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int parse_sval (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ;
 int ut16 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_member(SLF_MEMBER *lf_member, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 int read_bytes_before = *read_bytes, tmp_read_bytes_before = 0;

 lf_member->offset.name_or_val = 0;

 READ2(*read_bytes, len, lf_member->fldattr.fldattr, leaf_data, ut16);
 READ4(*read_bytes, len, lf_member->index, leaf_data, ut32);

 tmp_read_bytes_before = *read_bytes;
 parse_sval(&lf_member->offset, leaf_data, read_bytes, len);
 leaf_data += (*read_bytes - tmp_read_bytes_before);

 PEEK_READ1(*read_bytes, len, lf_member->pad, leaf_data, ut8);
 PAD_ALIGN(lf_member->pad, *read_bytes, leaf_data, len);





 return (*read_bytes - read_bytes_before);
}
