
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dll_version {scalar_t__ major; scalar_t__ minor; scalar_t__ build; scalar_t__ revision; } ;



__attribute__((used)) static bool dll_version_equal(struct dll_version a, struct dll_version b)
{
    return a.major == b.major &&
           a.minor == b.minor &&
           a.build == b.build &&
           a.revision == b.revision;
}
