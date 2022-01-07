
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 int in_uint8 (int ,int) ;

__attribute__((used)) static void
rdp_in_colour(STREAM s, uint32 * colour)
{
 uint32 i;
 in_uint8(s, i);
 *colour = i;
 in_uint8(s, i);
 *colour |= i << 8;
 in_uint8(s, i);
 *colour |= i << 16;
}
