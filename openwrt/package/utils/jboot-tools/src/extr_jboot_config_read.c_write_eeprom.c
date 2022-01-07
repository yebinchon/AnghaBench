
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_header {scalar_t__ type; scalar_t__ id; int length; int data; } ;


 scalar_t__ DATA_HEADER_EEPROM ;
 scalar_t__ DATA_HEADER_ID_CAL ;
 int EXIT_FAILURE ;
 int ofname ;
 int write_file (int ,int ,int ) ;

__attribute__((used)) static int write_eeprom(struct data_header **data_table, int cnt)
{
 int ret = EXIT_FAILURE;

 for (int i = 0; i < cnt; i++) {
  if (data_table[i]->type == DATA_HEADER_EEPROM
      && data_table[i]->id == DATA_HEADER_ID_CAL) {
   ret =
       write_file(ofname, data_table[i]->data,
           data_table[i]->length);
   break;
  }

 }

 return ret;
}
