
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad; int arg_list; int parm_count; int reserved; int call_conv; int return_type; } ;
typedef TYPE_1__ SLF_PROCEDURE ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int ut16 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_procedure(SLF_PROCEDURE *lf_procedure, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
 unsigned int tmp_before_read_bytes = *read_bytes;

 READ4(*read_bytes, len, lf_procedure->return_type, leaf_data, ut32);
 READ1(*read_bytes, len, lf_procedure->call_conv, leaf_data, ut8);
 READ1(*read_bytes, len, lf_procedure->reserved, leaf_data, ut8);
 READ2(*read_bytes, len, lf_procedure->parm_count, leaf_data, ut16);
 READ4(*read_bytes, len, lf_procedure->arg_list, leaf_data, ut32);

 PEEK_READ1(*read_bytes, len, lf_procedure->pad, leaf_data, ut8);
 PAD_ALIGN(lf_procedure->pad, *read_bytes, leaf_data, len);

 return *read_bytes - tmp_before_read_bytes;
}
