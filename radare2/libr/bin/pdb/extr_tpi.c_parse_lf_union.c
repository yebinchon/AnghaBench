
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name_or_val; } ;
struct TYPE_5__ {int cv_property; } ;
struct TYPE_6__ {int pad; TYPE_3__ size; int field_list; TYPE_1__ prop; int count; } ;
typedef TYPE_2__ SLF_UNION ;


 int PAD_ALIGN (int ,unsigned int,unsigned char*,unsigned int) ;
 int PEEK_READ1 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ2 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int READ4 (unsigned int,unsigned int,int ,unsigned char*,int ) ;
 int parse_sval (TYPE_3__*,unsigned char*,unsigned int*,unsigned int) ;
 int ut16 ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_lf_union(SLF_UNION *lf_union, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
 unsigned int tmp_before_read_bytes = *read_bytes;
 unsigned int before_read_bytes = 0;

 lf_union->size.name_or_val = 0;

 READ2(*read_bytes, len, lf_union->count, leaf_data, ut16);
 READ2(*read_bytes, len, lf_union->prop.cv_property, leaf_data, ut16);
 READ4(*read_bytes, len, lf_union->field_list, leaf_data, ut32);

 before_read_bytes = *read_bytes;
 parse_sval(&lf_union->size, leaf_data, read_bytes, len);
 before_read_bytes = *read_bytes - before_read_bytes;
 leaf_data = (unsigned char *)leaf_data + before_read_bytes;

 PEEK_READ1(*read_bytes, len, lf_union->pad, leaf_data, ut8);
 PAD_ALIGN(lf_union->pad, *read_bytes, leaf_data, len);




 return *read_bytes - tmp_before_read_bytes;
}
