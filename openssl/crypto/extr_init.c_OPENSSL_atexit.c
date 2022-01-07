
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* handler ) () ;struct TYPE_4__* next; } ;
typedef TYPE_1__ OPENSSL_INIT_STOP ;
typedef int * HMODULE ;
typedef int DSO ;
typedef int BOOL ;


 int CRYPTO_F_OPENSSL_ATEXIT ;
 int CRYPTOerr (int ,int ) ;
 int DSO_FLAG_NO_UNLOAD_ON_FREE ;
 int * DSO_dsobyaddr (void*,int ) ;
 int DSO_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS ;
 int GET_MODULE_HANDLE_EX_FLAG_PIN ;
 int GetModuleHandleEx (int,void*,int **) ;
 int INIT ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int OSSL_TRACE1 (int ,char*,char*) ;
 TYPE_1__* stop_handlers ;

int OPENSSL_atexit(void (*handler)(void))
{
    OPENSSL_INIT_STOP *newhand;



    {
        union {
            void *sym;
            void (*func)(void);
        } handlersym;

        handlersym.func = handler;
        {
            DSO *dso = ((void*)0);

            ERR_set_mark();
            dso = DSO_dsobyaddr(handlersym.sym, DSO_FLAG_NO_UNLOAD_ON_FREE);

            OSSL_TRACE1(INIT,
                       "atexit: obtained DSO reference? %s\n",
                       (dso == ((void*)0) ? "No!" : "Yes."));
            DSO_free(dso);
            ERR_pop_to_mark();
        }

    }


    if ((newhand = OPENSSL_malloc(sizeof(*newhand))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_ATEXIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    newhand->handler = handler;
    newhand->next = stop_handlers;
    stop_handlers = newhand;

    return 1;
}
