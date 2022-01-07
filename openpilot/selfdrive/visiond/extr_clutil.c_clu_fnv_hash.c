
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint64_t clu_fnv_hash(const uint8_t *data, size_t len) {

  uint64_t hval = 0xcbf29ce484222325ULL;
  const uint8_t *dp = data;
  const uint8_t *de = data + len;
  while (dp < de) {
    hval ^= (uint64_t) *dp++;
    hval += (hval << 1) + (hval << 4) + (hval << 5) +
        (hval << 7) + (hval << 8) + (hval << 40);
  }

  return hval;
}
