
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;


 int atoi (char const*) ;
 scalar_t__ mod (int,int) ;

__attribute__((used)) static bool rot_init(ut8 *rotkey, const ut8 *key, int keylen) {
 if (rotkey && key && keylen > 0) {
  int i = atoi ((const char *)key);
  *rotkey = (ut8)mod (i, 26);
  return 1;
 }
 return 0;
}
