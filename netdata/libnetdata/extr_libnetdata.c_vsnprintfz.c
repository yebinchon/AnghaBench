
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ unlikely (int) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int vsnprintfz(char *dst, size_t n, const char *fmt, va_list args) {
    int size = vsnprintf(dst, n, fmt, args);

    if (unlikely((size_t) size > n)) {

        size = (int)n;
    }

    dst[size] = '\0';
    return size;
}
