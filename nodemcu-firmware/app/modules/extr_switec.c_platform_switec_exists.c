
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SWITEC_CHANNEL_COUNT ;

int platform_switec_exists( unsigned int id )
{
  return (id < SWITEC_CHANNEL_COUNT);
}
