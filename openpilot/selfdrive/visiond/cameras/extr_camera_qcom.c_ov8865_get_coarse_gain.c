
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAYSIZE (int const*) ;

__attribute__((used)) static inline int ov8865_get_coarse_gain(int gain) {
  static const int gains[] = {0, 256, 384, 448, 480};
  int i;

  for (i = 1; i < ARRAYSIZE(gains); i++) {
    if (gain >= gains[i - 1] && gain < gains[i])
      break;
  }

  return i - 1;
}
