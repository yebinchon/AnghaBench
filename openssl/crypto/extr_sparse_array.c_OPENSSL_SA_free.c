
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_SA ;


 int OPENSSL_free (int *) ;
 int sa_doall (int *,int *,int *,int *) ;
 int sa_free_node ;

void OPENSSL_SA_free(OPENSSL_SA *sa)
{
    sa_doall(sa, &sa_free_node, ((void*)0), ((void*)0));
    OPENSSL_free(sa);
}
