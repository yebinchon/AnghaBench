
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int UZLIB_DATA ;


 int get_uint16 (int *) ;

__attribute__((used)) static uint get_le_uint32 (UZLIB_DATA *d) {
  uint v = get_uint16(d);
  return v | ((uint) get_uint16(d) << 16);
}
