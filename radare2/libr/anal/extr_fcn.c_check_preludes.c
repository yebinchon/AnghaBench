
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int memcmp (int *,int const*,int) ;

__attribute__((used)) static bool check_preludes(ut8 *buf, ut16 bufsz) {
 if (bufsz < 10) {
  return 0;
 }
 if (!memcmp (buf, (const ut8 *) "\x55\x89\xe5", 3)) {
  return 1;
 } else if (!memcmp (buf, (const ut8 *) "\x55\x8b\xec", 3)) {
  return 1;
 } else if (!memcmp (buf, (const ut8 *) "\x8b\xff", 2)) {
  return 1;
 } else if (!memcmp (buf, (const ut8 *) "\x55\x48\x89\xe5", 4)) {
  return 1;
 } else if (!memcmp (buf, (const ut8 *) "\x55\x48\x8b\xec", 4)) {
  return 1;
 }
 return 0;
}
