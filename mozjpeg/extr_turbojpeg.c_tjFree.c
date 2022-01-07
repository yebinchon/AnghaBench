
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (unsigned char*) ;

void tjFree(unsigned char *buf)
{
 if(buf) free(buf);
}
