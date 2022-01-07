
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mp_int ;


 int assert (int ) ;
 int mp_int_clear (int *) ;
 int px_free (int *) ;

void
mp_int_free(mp_int z)
{
 assert(z != ((void*)0));

 mp_int_clear(z);
 px_free(z);
}
