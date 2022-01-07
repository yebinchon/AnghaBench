
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interval ;


 int free (int *) ;

void
PGTYPESinterval_free(interval * intvl)
{
 free(intvl);
}
