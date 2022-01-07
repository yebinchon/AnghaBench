
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ value; } ;


 int ET_ERROR ;
 void* FALSE ;
 int PyErr_NoMemory () ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetNone (int ) ;
 int PyErr_SetVim (char*) ;
 int PyExc_KeyboardInterrupt ;
 TYPE_1__* current_exception ;
 void* did_emsg ;
 scalar_t__ did_throw ;
 int discard_current_exception () ;
 int free_global_msglist () ;
 int * get_exception_string (int *,int ,int *,int*) ;
 void* got_int ;
 int ** msg_list ;
 int trylevel ;
 int vim_free (int *) ;

__attribute__((used)) static int
VimTryEnd(void)
{
    --trylevel;



    did_emsg = FALSE;

    if (got_int)
    {
 if (did_throw)
     discard_current_exception();
 got_int = FALSE;
 PyErr_SetNone(PyExc_KeyboardInterrupt);
 return -1;
    }
    else if (msg_list != ((void*)0) && *msg_list != ((void*)0))
    {
 int should_free;
 char_u *msg;

 msg = get_exception_string(*msg_list, ET_ERROR, ((void*)0), &should_free);

 if (msg == ((void*)0))
 {
     PyErr_NoMemory();
     return -1;
 }

 PyErr_SetVim((char *) msg);

 free_global_msglist();

 if (should_free)
     vim_free(msg);

 return -1;
    }
    else if (!did_throw)
 return (PyErr_Occurred() ? -1 : 0);

    else if (PyErr_Occurred())
    {
 discard_current_exception();
 return -1;
    }

    else
    {
 PyErr_SetVim((char *)current_exception->value);
 discard_current_exception();
 return -1;
    }
}
