
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int nn_chunk_alloc (size_t,int,void**) ;

void *nn_allocmsg (size_t size, int type)
{
    int rc;
    void *result;

    rc = nn_chunk_alloc (size, type, &result);
    if (rc == 0)
        return result;
    errno = -rc;
    return ((void*)0);
}
