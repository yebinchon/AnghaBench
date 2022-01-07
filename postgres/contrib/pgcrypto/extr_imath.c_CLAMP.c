
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mp_size ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_5__ {int used; } ;


 int * MP_DIGITS (TYPE_1__*) ;
 int MP_USED (TYPE_1__*) ;

__attribute__((used)) static inline void
CLAMP(mp_int z_)
{
 mp_size uz_ = MP_USED(z_);
 mp_digit *dz_ = MP_DIGITS(z_) + uz_ - 1;

 while (uz_ > 1 && (*dz_-- == 0))
  --uz_;
 z_->used = uz_;
}
