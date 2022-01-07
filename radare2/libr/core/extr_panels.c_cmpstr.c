
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

int cmpstr(const void *_a, const void *_b) {
 char *a = (char *)_a, *b = (char *)_b;
 return strcmp (a, b);
}
