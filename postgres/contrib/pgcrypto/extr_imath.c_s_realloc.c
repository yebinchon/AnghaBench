
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mp_size ;
typedef int mp_digit ;


 int assert (int ) ;
 int fill ;
 int memcpy (int *,int *,size_t) ;
 int * px_realloc (int *,size_t) ;
 int * s_alloc (size_t) ;

__attribute__((used)) static mp_digit *
s_realloc(mp_digit *old, mp_size osize, mp_size nsize)
{
 mp_digit *new = px_realloc(old, nsize * sizeof(mp_digit));

 assert(new != ((void*)0));


 return new;
}
