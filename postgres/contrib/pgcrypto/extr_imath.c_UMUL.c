
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mp_size ;
typedef TYPE_1__* mp_int ;
struct TYPE_8__ {scalar_t__ used; } ;


 int CLAMP (TYPE_1__*) ;
 int MP_DIGITS (TYPE_1__*) ;
 scalar_t__ MP_USED (TYPE_1__*) ;
 int ZERO (int ,scalar_t__) ;
 int s_kmul (int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
UMUL(mp_int X, mp_int Y, mp_int Z)
{
 mp_size ua_ = MP_USED(X);
 mp_size ub_ = MP_USED(Y);
 mp_size o_ = ua_ + ub_;

 ZERO(MP_DIGITS(Z), o_);
 (void) s_kmul(MP_DIGITS(X), MP_DIGITS(Y), MP_DIGITS(Z), ua_, ub_);
 Z->used = o_;
 CLAMP(Z);
}
