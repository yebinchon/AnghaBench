
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int nn_chunk_realloc (size_t,void**) ;

void *nn_reallocmsg (void *msg, size_t size)
{
    int rc;

    rc = nn_chunk_realloc (size, &msg);
    if (rc == 0)
        return msg;
    errno = -rc;
    return ((void*)0);
}
