
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int typecnt; int charcnt; int leapcnt; int ttisstdcnt; int ttisgmtcnt; } ;
struct TYPE_5__ {TYPE_1__ _bit32; } ;
typedef TYPE_2__ timelib_tzinfo ;
typedef int int32_t ;



__attribute__((used)) static void skip_32bit_types(const unsigned char **tzf, timelib_tzinfo *tz)
{

 *tzf += sizeof(unsigned char) * 6 * tz->_bit32.typecnt;


 *tzf += sizeof(char) * tz->_bit32.charcnt;


 if (tz->_bit32.leapcnt) {
  *tzf += sizeof(int32_t) * tz->_bit32.leapcnt * 2;
 }


 if (tz->_bit32.ttisstdcnt) {
  *tzf += sizeof(unsigned char) * tz->_bit32.ttisstdcnt;
 }


 if (tz->_bit32.ttisgmtcnt) {
  *tzf += sizeof(unsigned char) * tz->_bit32.ttisgmtcnt;
 }
}
