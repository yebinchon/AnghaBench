
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int MENUET_VERSION (int const*) ;
 int UT64_MAX ;
 int r_read_ble32 (int const*,int) ;

__attribute__((used)) static ut64 menuetEntry(const ut8 *buf, int buf_size) {
 switch (MENUET_VERSION(buf)) {
 case '0': return r_read_ble32 (buf + 12, 0);
 case '1': return r_read_ble32 (buf + 12, 0);
 case '2': return r_read_ble32 (buf + 44, 0);
 }
 return UT64_MAX;
}
