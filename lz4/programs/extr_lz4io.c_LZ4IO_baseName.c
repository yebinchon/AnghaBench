
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char* LZ4IO_baseName(const char* input_filename) {
    const char* b = strrchr(input_filename, '/');
    if (!b) b = strrchr(input_filename, '\\');
    if (!b) return input_filename;
    return b ? b + 1 : b;
}
