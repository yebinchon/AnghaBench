
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int substructs; } ;
typedef TYPE_1__ SLF_FIELDLIST ;
typedef int ELeafType ;


 int PARSE_LF2 (int ,int ,int const) ;
 int READ2 (unsigned int,unsigned int,int,unsigned char*,int ) ;
 int SLF_ENUMERATE ;
 int SLF_MEMBER ;
 int SLF_METHOD ;
 int SLF_NESTTYPE ;
 int SLF_ONEMETHOD ;





 int lf_enumerate ;
 int lf_member ;
 int lf_method ;
 int lf_nesttype ;
 int lf_onemethod ;
 int r_list_new () ;
 int ut16 ;

__attribute__((used)) static int parse_lf_fieldlist(SLF_FIELDLIST *lf_fieldlist, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
 ELeafType leaf_type;
 int curr_read_bytes = 0;
 unsigned char *p = leaf_data;

 lf_fieldlist->substructs = r_list_new ();

 while (*read_bytes <= len) {
  READ2(*read_bytes, len, leaf_type, p, ut16);
  switch (leaf_type) {
  case 132:
   PARSE_LF2(SLF_ENUMERATE, lf_enumerate, 132);
   break;
  case 129:
   PARSE_LF2(SLF_NESTTYPE, lf_nesttype, 129);
   break;
  case 130:
   PARSE_LF2(SLF_METHOD, lf_method, 130);
   break;
  case 131:
   PARSE_LF2(SLF_MEMBER, lf_member, 131);
   break;
  case 128:
   PARSE_LF2(SLF_ONEMETHOD, lf_onemethod, 128);
   break;
  default:

   return 0;
  }

  if (curr_read_bytes != 0) {
   p += curr_read_bytes;
  } else {
   return 0;
  }
 }
 return 0;
}
