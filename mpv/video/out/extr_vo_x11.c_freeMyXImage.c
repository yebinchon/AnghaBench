
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {TYPE_1__* x11; } ;
struct priv {int ** myximage; TYPE_2__* Shminfo; scalar_t__ Shmem_Flag; struct vo* vo; } ;
struct TYPE_4__ {int shmaddr; } ;
struct TYPE_3__ {int display; } ;


 int XDestroyImage (int *) ;
 int XShmDetach (int ,TYPE_2__*) ;
 int shmdt (int ) ;

__attribute__((used)) static void freeMyXImage(struct priv *p, int foo)
{
    struct vo *vo = p->vo;
    if (p->Shmem_Flag) {
        XShmDetach(vo->x11->display, &p->Shminfo[foo]);
        XDestroyImage(p->myximage[foo]);
        shmdt(p->Shminfo[foo].shmaddr);
    } else {
        if (p->myximage[foo])
            XDestroyImage(p->myximage[foo]);
    }
    p->myximage[foo] = ((void*)0);
}
