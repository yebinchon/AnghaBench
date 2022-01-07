
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;


 int EC_POINT_copy (int *,int const*) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (int const*) ;

EC_POINT *EC_POINT_dup(const EC_POINT *a, const EC_GROUP *group)
{
    EC_POINT *t;
    int r;

    if (a == ((void*)0))
        return ((void*)0);

    t = EC_POINT_new(group);
    if (t == ((void*)0))
        return ((void*)0);
    r = EC_POINT_copy(t, a);
    if (!r) {
        EC_POINT_free(t);
        return ((void*)0);
    }
    return t;
}
