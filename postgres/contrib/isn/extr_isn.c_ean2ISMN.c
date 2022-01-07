
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hyphenate (char*,char*,int *,int *) ;

__attribute__((used)) static inline void
ean2ISMN(char *isn)
{


 hyphenate(isn, isn + 4, ((void*)0), ((void*)0));
 isn[0] = 'M';
}
