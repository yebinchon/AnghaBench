
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bipbuf_t ;


 int bipbuf_init (int *,unsigned int const) ;
 int bipbuf_sizeof (unsigned int const) ;
 int * malloc (int ) ;

bipbuf_t *bipbuf_new(const unsigned int size)
{
    bipbuf_t *me = malloc(bipbuf_sizeof(size));
    if (!me)
        return ((void*)0);
    bipbuf_init(me, size);
    return me;
}
