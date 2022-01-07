
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* LPPROC_THREAD_ATTRIBUTE_LIST ;


 int DeleteProcThreadAttributeList (void*) ;

__attribute__((used)) static void delete_handle_list(void *p)
{
    LPPROC_THREAD_ATTRIBUTE_LIST list = p;
    DeleteProcThreadAttributeList(list);
}
