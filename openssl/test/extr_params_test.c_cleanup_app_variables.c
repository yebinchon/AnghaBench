
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_free (int *) ;
 int * app_p3 ;

__attribute__((used)) static int cleanup_app_variables(void)
{
    BN_free(app_p3);
    app_p3 = ((void*)0);
    return 1;
}
