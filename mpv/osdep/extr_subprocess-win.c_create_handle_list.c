
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int * LPPROC_THREAD_ATTRIBUTE_LIST ;
typedef int HANDLE ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int InitializeProcThreadAttributeList (int *,int,int ,int *) ;
 int PROC_THREAD_ATTRIBUTE_HANDLE_LIST ;
 int UpdateProcThreadAttribute (int *,int ,int ,int *,int,int *,int *) ;
 int delete_handle_list ;
 int talloc_free (int *) ;
 int talloc_set_destructor (int *,int ) ;
 int * talloc_size (void*,int ) ;

__attribute__((used)) static LPPROC_THREAD_ATTRIBUTE_LIST create_handle_list(void *ctx,
                                                       HANDLE *handles, int num)
{

    SIZE_T size = 0;
    if (!InitializeProcThreadAttributeList(((void*)0), 1, 0, &size)) {
        if (GetLastError() != ERROR_INSUFFICIENT_BUFFER)
            return ((void*)0);
    }


    LPPROC_THREAD_ATTRIBUTE_LIST list = talloc_size(ctx, size);
    if (!InitializeProcThreadAttributeList(list, 1, 0, &size))
        goto error;
    talloc_set_destructor(list, delete_handle_list);

    if (!UpdateProcThreadAttribute(list, 0, PROC_THREAD_ATTRIBUTE_HANDLE_LIST,
                                   handles, num * sizeof(HANDLE), ((void*)0), ((void*)0)))
        goto error;

    return list;
error:
    talloc_free(list);
    return ((void*)0);
}
