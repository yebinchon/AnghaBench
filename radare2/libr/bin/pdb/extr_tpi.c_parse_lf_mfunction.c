
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad; int this_adjust; int arglist; int parm_count; int reserved; int call_conv; int this_type; int class_type; int return_type; } ;
typedef TYPE_1__ SLF_MFUNCTION ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int st32 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_mfunction(SLF_MFUNCTION *lf_mfunction, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int tmp_before_read_bytes = *read_bytes;

 READ4(*read_bytes, len, lf_mfunction->return_type, leaf_data, ut32);
 READ4(*read_bytes, len, lf_mfunction->class_type, leaf_data, ut32);
 READ4(*read_bytes, len, lf_mfunction->this_type, leaf_data, ut32);
 READ1(*read_bytes, len, lf_mfunction->call_conv, leaf_data, ut8);
 READ1(*read_bytes, len, lf_mfunction->reserved, leaf_data, ut8);
 READ2(*read_bytes, len, lf_mfunction->parm_count, leaf_data, ut8);
 READ4(*read_bytes, len, lf_mfunction->arglist, leaf_data, ut32);
 READ4(*read_bytes, len, lf_mfunction->this_adjust, leaf_data, st32);

 PEEK_READ1(*read_bytes, len, lf_mfunction->pad, leaf_data, ut8);
 PAD_ALIGN(lf_mfunction->pad, *read_bytes, leaf_data, len);

 return *read_bytes - tmp_before_read_bytes;
}
