
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static inline int needWord(ut8 type) {
 return ((type <= 0x17) && (type > 0x0f)) || (type == 0x1e) || (type == 0x1f);

}
