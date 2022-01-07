
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pedal_enable_can_transciever (unsigned int,int) ;

void pedal_enable_can_transcievers(bool enabled) {
  pedal_enable_can_transciever(1U, enabled);
}
