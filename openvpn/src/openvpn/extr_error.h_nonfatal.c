
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const M_FATAL ;
 unsigned int const M_NONFATAL ;

__attribute__((used)) static inline unsigned int
nonfatal(const unsigned int err)
{
    return err & M_FATAL ? (err ^ M_FATAL) | M_NONFATAL : err;
}
