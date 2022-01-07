
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_st {struct object_st* p4; int * p3; } ;


 int BN_free (int *) ;
 int OPENSSL_free (struct object_st*) ;

__attribute__((used)) static void cleanup_object(void *vobj)
{
    struct object_st *obj = vobj;

    BN_free(obj->p3);
    obj->p3 = ((void*)0);
    OPENSSL_free(obj->p4);
    obj->p4 = ((void*)0);
    OPENSSL_free(obj);
}
