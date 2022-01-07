
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_DHT ;

int platform_dht_exists( unsigned id )
{
  return ((id < NUM_DHT) && (id > 0));
}
