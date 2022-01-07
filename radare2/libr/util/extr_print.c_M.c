
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int * malloc (int) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static ut8* M(const ut8 *b, int len) {
 ut8 *r = malloc (len + 16);
 if (!r) {
  return ((void*)0);
 }
 memset (r, 0xff, len + 16);
 memcpy (r, b, len);
 return r;
}
