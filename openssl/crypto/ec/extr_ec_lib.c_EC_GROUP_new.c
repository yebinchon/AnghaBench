
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_METHOD ;
typedef int EC_GROUP ;


 int * EC_GROUP_new_ex (int *,int const*) ;

EC_GROUP *EC_GROUP_new(const EC_METHOD *meth)
{
    return EC_GROUP_new_ex(((void*)0), meth);
}
