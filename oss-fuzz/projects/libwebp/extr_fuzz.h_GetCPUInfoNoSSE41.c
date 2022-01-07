
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CPUFeature ;


 int GetCPUInfo (scalar_t__) ;
 scalar_t__ kAVX ;
 scalar_t__ kSSE4_1 ;

__attribute__((used)) static int GetCPUInfoNoSSE41(CPUFeature feature) {
  if (feature == kSSE4_1 || feature == kAVX) return 0;
  return GetCPUInfo(feature);
}
