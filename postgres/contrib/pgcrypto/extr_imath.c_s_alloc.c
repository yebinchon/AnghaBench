
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_digit ;


 int assert (int ) ;
 int fill ;
 int * px_alloc (int) ;

__attribute__((used)) static mp_digit *
s_alloc(mp_size num)
{
 mp_digit *out = px_alloc(num * sizeof(mp_digit));

 assert(out != ((void*)0));





 return out;
}
