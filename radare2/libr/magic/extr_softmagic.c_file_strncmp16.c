
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef scalar_t__ ut32 ;


 int file_strncmp (char const*,char const*,size_t,scalar_t__) ;

__attribute__((used)) static ut64 file_strncmp16(const char *a, const char *b, size_t len, ut32 flags) {





 flags = 0;
 return file_strncmp(a, b, len, flags);
}
