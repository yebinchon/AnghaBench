
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int modifier; } ;
struct TYPE_5__ {int pad; TYPE_1__ umodifier; int modified_type; } ;
typedef TYPE_2__ SLF_MODIFIER ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int SWAP_UINT16 (int ) ;
 int ut16 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_modifier(SLF_MODIFIER *lf_modifier, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int tmp_before_read_bytes = *read_bytes;

 READ4(*read_bytes, len, lf_modifier->modified_type, leaf_data, ut32);
 READ2(*read_bytes, len, lf_modifier->umodifier.modifier, leaf_data, ut16);
 lf_modifier->umodifier.modifier = SWAP_UINT16(lf_modifier->umodifier.modifier);

 PEEK_READ1(*read_bytes, len, lf_modifier->pad, leaf_data, ut8);
 PAD_ALIGN(lf_modifier->pad, *read_bytes, leaf_data, len);

 return *read_bytes - tmp_before_read_bytes;
}
