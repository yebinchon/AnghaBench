
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ lut ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static inline char* out2(const int d, char* p) {
    memcpy(p, &((uint16_t *)lut)[d], 2);
    return p + 2;
}
