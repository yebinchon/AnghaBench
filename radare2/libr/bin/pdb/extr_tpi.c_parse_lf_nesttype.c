
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {TYPE_2__ name; int index; int pad; } ;
typedef TYPE_1__ SLF_NESTTYPE ;


 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int parse_sctring (TYPE_2__*,unsigned char*,unsigned int*,unsigned int) ;
 int ut16 ;

__attribute__((used)) static int parse_lf_nesttype(SLF_NESTTYPE *lf_nesttype, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 unsigned int read_bytes_before = *read_bytes;

 lf_nesttype->name.name = 0;

 READ2(*read_bytes, len, lf_nesttype->pad, leaf_data, ut16);
 READ4(*read_bytes, len, lf_nesttype->index, leaf_data, ut16);

 parse_sctring(&lf_nesttype->name, leaf_data, read_bytes, len);


 return *read_bytes - read_bytes_before;
}
