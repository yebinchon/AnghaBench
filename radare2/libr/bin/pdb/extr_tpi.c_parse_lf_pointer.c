
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr_attr; } ;
struct TYPE_5__ {int pad; TYPE_1__ ptr_attr; int utype; } ;
typedef TYPE_2__ SLF_POINTER ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int SWAP_UINT32 (int ) ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_pointer(SLF_POINTER *lf_pointer, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int tmp_before_read_bytes = *read_bytes;

 READ4(*read_bytes, len, lf_pointer->utype, leaf_data, ut32);
 READ4(*read_bytes, len, lf_pointer->ptr_attr.ptr_attr, leaf_data, ut32);

 lf_pointer->ptr_attr.ptr_attr = SWAP_UINT32(lf_pointer->ptr_attr.ptr_attr);

 PEEK_READ1(*read_bytes, len, lf_pointer->pad, leaf_data, ut8);
 PAD_ALIGN(lf_pointer->pad, *read_bytes, leaf_data, len);

 return *read_bytes - tmp_before_read_bytes;
}
