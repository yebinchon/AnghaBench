
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_size ;
typedef TYPE_1__* mp_int ;
struct TYPE_3__ {int used; } ;



__attribute__((used)) static inline mp_size
MP_USED(mp_int Z)
{
 return Z->used;
}
