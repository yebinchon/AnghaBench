
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_5__ {size_t num_bits; size_t num_fields; TYPE_1__* fields; } ;
typedef TYPE_2__ gdbr_xml_flags_t ;
struct TYPE_4__ {int sz; size_t bit_num; int * name; } ;


 int memset (char*,char,size_t) ;
 size_t tolower (int ) ;

__attribute__((used)) static void _write_flag_bits(char *buf, const gdbr_xml_flags_t *flags) {
 bool fc[26] = { 0 };
 ut32 i, c;
 memset (buf, '.', flags->num_bits);
 buf[flags->num_bits] = '\0';
 for (i = 0; i < flags->num_fields; i++) {

  if (flags->fields[i].sz != 1) {
   continue;
  }



  c = tolower (flags->fields[i].name[0]) - 'a';
  if (fc[c]) {
   continue;
  }
  fc[c] = 1;
  buf[flags->fields[i].bit_num] = 'a' + c;
 }
}
