
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP ;


 int RTMP_TLS_Free () ;
 scalar_t__ RTMP_TLS_ctx ;
 int free (int *) ;

void
RTMP_Free(RTMP *r)
{




    free(r);
}
