
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decode {scalar_t__ frame_ready; } ;


 scalar_t__ mp_decode_next (struct mp_decode*) ;

__attribute__((used)) static inline bool mp_decode_frame(struct mp_decode *d)
{
 return d->frame_ready || mp_decode_next(d);
}
