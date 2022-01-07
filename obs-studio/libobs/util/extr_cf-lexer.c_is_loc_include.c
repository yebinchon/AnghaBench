
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; char* array; } ;



__attribute__((used)) static inline bool is_loc_include(struct strref *ref)
{
 return ref->len >= 2 && ref->array[0] == '"' &&
        ref->array[ref->len - 1] == '"';
}
