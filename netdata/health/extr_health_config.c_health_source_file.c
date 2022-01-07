
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int snprintfz (char*,int ,char*,size_t,char const*) ;
 char* strdupz (char*) ;

__attribute__((used)) static inline char *health_source_file(size_t line, const char *file) {
    char buffer[FILENAME_MAX + 1];
    snprintfz(buffer, FILENAME_MAX, "%zu@%s", line, file);
    return strdupz(buffer);
}
