
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int context_t ;
typedef int WINECRYPT_CERTSTORE ;


 int Context_Free (int *) ;

__attribute__((used)) static void Collection_releaseContext(WINECRYPT_CERTSTORE *store, context_t *context)
{

    Context_Free(context);
}
