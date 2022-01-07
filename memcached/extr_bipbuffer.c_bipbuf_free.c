
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bipbuf_t ;


 int free (int *) ;

void bipbuf_free(bipbuf_t* me)
{
    free(me);
}
