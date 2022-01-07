
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int * array; } ;


 scalar_t__ is_whitespace (int ) ;

__attribute__((used)) static inline void remove_ref_whitespace(struct strref *ref)
{
 if (ref->array) {
  while (is_whitespace(*ref->array)) {
   ref->array++;
   ref->len--;
  }

  while (ref->len && is_whitespace(ref->array[ref->len - 1]))
   ref->len--;
 }
}
