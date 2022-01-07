
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __approximate_rgb (int,int,int) ;
 int __lookup_rgb (int,int,int) ;

__attribute__((used)) static int rgb(int r, int g, int b) {
 int c = __lookup_rgb (r, g, b);
 if (c == -1) {
  return __approximate_rgb (r, g, b);
 }
 return c;
}
