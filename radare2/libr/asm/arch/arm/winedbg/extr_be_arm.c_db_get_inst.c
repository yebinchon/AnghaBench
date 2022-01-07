
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int ut16 ;



__attribute__((used)) static ut32 db_get_inst(const ut8* buf, int size) {
  ut32 result = 0;

 switch (size) {
 case 4:
  result = *(ut32*)buf;
  break;
 case 2:
  result = *(ut16*)buf;
  break;
 }
 return result;
}
