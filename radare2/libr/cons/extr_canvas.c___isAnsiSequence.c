
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool __isAnsiSequence(const char *s) {
 return s && s[0] == 033 && s[1] == '[';
}
