
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char get_shape_char(int shape) {
  switch (shape) {
  case 0: return 'I';
  case 1: return 'J';
  case 2: return 'L';
  case 3: return 'O';
  case 4: return 'S';
  case 5: return 'T';
  case 6: return 'Z';
  }
  return 'Q';
}
