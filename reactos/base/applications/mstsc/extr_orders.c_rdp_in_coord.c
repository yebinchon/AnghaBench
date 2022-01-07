
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sint8 ;
typedef int sint16 ;
typedef int STREAM ;
typedef scalar_t__ RD_BOOL ;


 int in_uint16_le (int ,int ) ;
 int in_uint8 (int ,scalar_t__) ;

__attribute__((used)) static void
rdp_in_coord(STREAM s, sint16 * coord, RD_BOOL delta)
{
 sint8 change;

 if (delta)
 {
  in_uint8(s, change);
  *coord += change;
 }
 else
 {
  in_uint16_le(s, *coord);
 }
}
