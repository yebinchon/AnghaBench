
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LSAPI_key_value_pair {int valLen; int pValue; int keyLen; int pKey; } ;
typedef int (* LSAPI_CB_EnvHandler ) (int ,int ,int ,int ,void*) ;


 int stub1 (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int EnvForeach( struct LSAPI_key_value_pair * pEnv,
            int n, LSAPI_CB_EnvHandler fn, void * arg )
{
    struct LSAPI_key_value_pair * pEnd = pEnv + n;
    int ret;
    if ( !pEnv || !fn )
        return -1;
    while( pEnv < pEnd )
    {
        ret = (*fn)( pEnv->pKey, pEnv->keyLen,
                    pEnv->pValue, pEnv->valLen, arg );
        if ( ret <= 0 )
            return ret;
        ++pEnv;
    }
    return n;
}
