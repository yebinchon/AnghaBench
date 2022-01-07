
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_size ;



__attribute__((used)) static inline mp_size
MAX(mp_size A, mp_size B)
{
 return (B > A ? B : A);
}
