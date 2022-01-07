
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,unsigned char*,int) ;

__attribute__((used)) static inline void yxml_setchar(char *dest, unsigned ch) {
 unsigned char _ch = ch;
 memcpy(dest, &_ch, 1);
}
