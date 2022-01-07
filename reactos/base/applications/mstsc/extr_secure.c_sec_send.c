
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 int MCS_GLOBAL_CHANNEL ;
 int sec_send_to_channel (int ,int ,int ) ;

void
sec_send(STREAM s, uint32 flags)
{
 sec_send_to_channel(s, flags, MCS_GLOBAL_CHANNEL);
}
