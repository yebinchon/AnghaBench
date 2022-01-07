
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCONFIGURATION_COMPONENT_DATA ;


 int FldrCreateSystemKey (int *) ;
 int printf (char*) ;

PCONFIGURATION_COMPONENT_DATA PpcPrepHwDetect() {
  PCONFIGURATION_COMPONENT_DATA SystemKey;


  FldrCreateSystemKey(&SystemKey);

  printf("DetectHardware() Done\n");
  return SystemKey;
}
