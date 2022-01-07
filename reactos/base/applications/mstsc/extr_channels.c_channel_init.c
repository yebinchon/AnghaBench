
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int VCHANNEL ;
typedef int STREAM ;


 int SEC_ENCRYPT ;
 int channel_hdr ;
 scalar_t__ g_encryption ;
 int s_push_layer (int ,int ,int) ;
 int sec_init (int ,scalar_t__) ;

STREAM
channel_init(VCHANNEL * channel, uint32 length)
{
 STREAM s;

 s = sec_init(g_encryption ? SEC_ENCRYPT : 0, length + 8);
 s_push_layer(s, channel_hdr, 8);
 return s;
}
