
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_header {scalar_t__ type; scalar_t__ id; int* data; } ;


 scalar_t__ DATA_HEADER_CONFIG ;
 scalar_t__ DATA_HEADER_ID_MAC ;
 int printf (char*,int) ;

__attribute__((used)) static void print_mac(struct data_header **data_table, int cnt)
{

 for (int i = 0; i < cnt; i++) {
  if (data_table[i]->type == DATA_HEADER_CONFIG
      && data_table[i]->id == DATA_HEADER_ID_MAC) {
   int j;
   for (j = 0; j < 5; j++)
    printf("%02x:", data_table[i]->data[j]);
   printf("%02x\n", data_table[i]->data[j]);
  }

 }

}
