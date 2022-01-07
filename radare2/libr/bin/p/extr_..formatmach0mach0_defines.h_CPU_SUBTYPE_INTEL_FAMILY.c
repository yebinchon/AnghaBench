
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CPUSubTypeX86 { ____Placeholder_CPUSubTypeX86 } CPUSubTypeX86 ;



__attribute__((used)) static inline int CPU_SUBTYPE_INTEL_FAMILY(enum CPUSubTypeX86 ST) {
 return ((int)ST) & 0x0f;
}
