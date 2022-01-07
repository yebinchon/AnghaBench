
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef int STREAM ;


 int out_uint16_le (int ,scalar_t__) ;
 int out_uint8p (int ,int *,scalar_t__) ;

__attribute__((used)) static void
rdp_out_unknown_caps(STREAM s, uint16 id, uint16 length, uint8 * caps)
{
 out_uint16_le(s, id);
 out_uint16_le(s, length);

 out_uint8p(s, caps, length - 4);
}
