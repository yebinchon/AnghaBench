
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_char_occurence(const char *input, const char char_to_count) {
  const char *current = input;
  int occur = 0;
    while (*current != 0) {
        if (*current == char_to_count) occur++;
    current++;
  }
  return occur;
}
