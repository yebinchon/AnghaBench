
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* stringToNodeInternal (char const*,int) ;

void *
stringToNode(const char *str)
{
 return stringToNodeInternal(str, 0);
}
