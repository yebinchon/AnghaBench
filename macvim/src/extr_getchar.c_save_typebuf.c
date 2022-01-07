
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAIL ;
 int OK ;
 scalar_t__ alloc_typebuf () ;
 int closescript () ;
 size_t curscript ;
 int init_typebuf () ;
 int * saved_typebuf ;
 int typebuf ;

int
save_typebuf()
{
    init_typebuf();
    saved_typebuf[curscript] = typebuf;

    if (alloc_typebuf() == FAIL)
    {
 closescript();
 return FAIL;
    }
    return OK;
}
