
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vo {TYPE_1__* x11; } ;
struct TYPE_9__ {int visual; } ;
struct priv {int Shmem_Flag; int image_height; TYPE_3__** myximage; int image_width; int depth; TYPE_2__ vinfo; TYPE_4__* Shminfo; struct vo* vo; } ;
struct TYPE_11__ {scalar_t__ shmid; char* shmaddr; int readOnly; } ;
struct TYPE_10__ {int bytes_per_line; int height; char* data; } ;
struct TYPE_8__ {int display; scalar_t__ ShmCompletionEvent; scalar_t__ display_is_local; } ;


 int False ;
 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int MP_VERBOSE (struct vo*,char*) ;
 int MP_WARN (struct vo*,char*) ;
 scalar_t__ ShmCompletion ;
 TYPE_3__* XCreateImage (int ,int ,int ,int ,int ,int *,int ,int,int,int ) ;
 int XDestroyImage (TYPE_3__*) ;
 int XShmAttach (int ,TYPE_4__*) ;
 TYPE_3__* XShmCreateImage (int ,int ,int ,int ,int *,TYPE_4__*,int ,int) ;
 scalar_t__ XShmGetEventBase (int ) ;
 scalar_t__ XShmQueryExtension (int ) ;
 int XSync (int ,int ) ;
 int ZPixmap ;
 char* calloc (int,int) ;
 scalar_t__ shmat (scalar_t__,int ,int ) ;
 int shmctl (scalar_t__,int ,int ) ;
 scalar_t__ shmget (int ,int,int) ;

__attribute__((used)) static bool getMyXImage(struct priv *p, int foo)
{
    struct vo *vo = p->vo;
    if (vo->x11->display_is_local && XShmQueryExtension(vo->x11->display)) {
        p->Shmem_Flag = 1;
        vo->x11->ShmCompletionEvent = XShmGetEventBase(vo->x11->display)
                                    + ShmCompletion;
    } else {
        p->Shmem_Flag = 0;
        MP_WARN(vo, "Shared memory not supported\nReverting to normal Xlib\n");
    }

    if (p->Shmem_Flag) {
        p->myximage[foo] =
            XShmCreateImage(vo->x11->display, p->vinfo.visual, p->depth,
                            ZPixmap, ((void*)0), &p->Shminfo[foo], p->image_width,
                            p->image_height);
        if (p->myximage[foo] == ((void*)0)) {
            MP_WARN(vo, "Shared memory error,disabling ( Ximage error )\n");
            goto shmemerror;
        }
        p->Shminfo[foo].shmid = shmget(IPC_PRIVATE,
                                       p->myximage[foo]->bytes_per_line *
                                       p->myximage[foo]->height,
                                       IPC_CREAT | 0777);
        if (p->Shminfo[foo].shmid < 0) {
            XDestroyImage(p->myximage[foo]);
            MP_WARN(vo, "Shared memory error,disabling ( seg id error )\n");
            goto shmemerror;
        }
        p->Shminfo[foo].shmaddr = (char *) shmat(p->Shminfo[foo].shmid, 0, 0);

        if (p->Shminfo[foo].shmaddr == ((char *) -1)) {
            XDestroyImage(p->myximage[foo]);
            MP_WARN(vo, "Shared memory error,disabling ( address error )\n");
            goto shmemerror;
        }
        p->myximage[foo]->data = p->Shminfo[foo].shmaddr;
        p->Shminfo[foo].readOnly = False;
        XShmAttach(vo->x11->display, &p->Shminfo[foo]);

        XSync(vo->x11->display, False);

        shmctl(p->Shminfo[foo].shmid, IPC_RMID, 0);
    } else {
shmemerror:
        p->Shmem_Flag = 0;

        MP_VERBOSE(vo, "Not using SHM.\n");
        p->myximage[foo] =
            XCreateImage(vo->x11->display, p->vinfo.visual, p->depth, ZPixmap,
                         0, ((void*)0), p->image_width, p->image_height, 8, 0);
        if (!p->myximage[foo]) {
            MP_WARN(vo, "could not allocate image");
            return 0;
        }
        p->myximage[foo]->data =
            calloc(1, p->myximage[foo]->bytes_per_line * p->image_height + 32);
    }
    return 1;
}
