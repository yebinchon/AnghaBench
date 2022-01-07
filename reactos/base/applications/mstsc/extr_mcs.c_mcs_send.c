
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int MCS_GLOBAL_CHANNEL ;
 int mcs_send_to_channel (int ,int ) ;

void
mcs_send(STREAM s)
{
 mcs_send_to_channel(s, MCS_GLOBAL_CHANNEL);
}
