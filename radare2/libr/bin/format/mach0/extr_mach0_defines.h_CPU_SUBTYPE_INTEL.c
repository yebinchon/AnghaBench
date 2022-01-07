
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int CPU_SUBTYPE_INTEL(int Family, int Model) {
 return Family | (Model << 4);
}
