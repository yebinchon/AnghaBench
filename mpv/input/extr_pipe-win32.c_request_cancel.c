
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int file; int thread; int cancel_requested; } ;
struct mp_input_src {struct priv* priv; } ;


 scalar_t__ CancelIoEx (int ,int *) ;
 int MP_VERBOSE (struct mp_input_src*,char*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int atomic_store (int *,int) ;

__attribute__((used)) static void request_cancel(struct mp_input_src *src)
{
    struct priv *p = src->priv;

    MP_VERBOSE(src, "Exiting...\n");
    atomic_store(&p->cancel_requested, 1);




    do {
        if (CancelIoEx(p->file, ((void*)0)))
            break;
    } while (WaitForSingleObject(p->thread, 1) != WAIT_OBJECT_0);
}
