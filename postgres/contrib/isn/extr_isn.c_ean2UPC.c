
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dehyphenate (char*,char*) ;

__attribute__((used)) static inline void
ean2UPC(char *isn)
{


 dehyphenate(isn, isn + 1);
 isn[12] = '\0';
}
