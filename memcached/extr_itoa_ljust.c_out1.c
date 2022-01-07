
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static inline char* out1(const char in, char* p) {
    memcpy(p, &in, 1);
    return p + 1;
}
