
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int mbfl_is_error(size_t len) {
 return len >= (size_t) -16;
}
