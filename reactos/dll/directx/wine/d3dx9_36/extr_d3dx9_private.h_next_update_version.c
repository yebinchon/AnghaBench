
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG64 ;



__attribute__((used)) static inline ULONG64 next_update_version(ULONG64 *version_counter)
{
    return ++*version_counter;
}
