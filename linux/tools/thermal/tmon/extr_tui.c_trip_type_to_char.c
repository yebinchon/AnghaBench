
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char trip_type_to_char(int type)
{
 switch (type) {
 case 130: return 'C';
 case 129: return 'H';
 case 128: return 'P';
 case 131: return 'A';
 default:
  return '?';
 }
}
