
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (void*) ;

void espconn_memfree(void *fp, char* file, int line)
{

 os_free(fp);
 fp = ((void*)0);
}
