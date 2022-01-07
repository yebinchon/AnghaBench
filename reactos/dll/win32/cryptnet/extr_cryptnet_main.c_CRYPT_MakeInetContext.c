
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InetContext {int error; int timeout; int event; } ;
typedef int DWORD ;


 int CreateEventW (int *,int ,int ,int *) ;
 struct InetContext* CryptMemAlloc (int) ;
 int CryptMemFree (struct InetContext*) ;
 int ERROR_SUCCESS ;
 int FALSE ;

__attribute__((used)) static struct InetContext *CRYPT_MakeInetContext(DWORD dwTimeout)
{
    struct InetContext *context = CryptMemAlloc(sizeof(struct InetContext));

    if (context)
    {
        context->event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
        if (!context->event)
        {
            CryptMemFree(context);
            context = ((void*)0);
        }
        else
        {
            context->timeout = dwTimeout;
            context->error = ERROR_SUCCESS;
        }
    }
    return context;
}
