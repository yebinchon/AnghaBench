
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CPUFeature ;


 int GetCPUInfo (scalar_t__) ;
 scalar_t__ kSSE3 ;
 scalar_t__ kSlowSSSE3 ;

__attribute__((used)) static int GetCPUInfoForceSlowSSSE3(CPUFeature feature) {
  if (feature == kSlowSSSE3 && GetCPUInfo(kSSE3)) {
    return 1;
  }
  return GetCPUInfo(feature);
}
