
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP ;


 int * calloc (int,int) ;

RTMP *
RTMP_Alloc()
{
    return calloc(1, sizeof(RTMP));
}
