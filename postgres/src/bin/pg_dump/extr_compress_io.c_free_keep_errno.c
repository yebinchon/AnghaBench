
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int free (void*) ;

__attribute__((used)) static void
free_keep_errno(void *p)
{
 int save_errno = errno;

 free(p);
 errno = save_errno;
}
