
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LSAPI_key_value_pair {int dummy; } ;


 scalar_t__ realloc (struct LSAPI_key_value_pair*,int) ;

__attribute__((used)) static int allocateEnvList( struct LSAPI_key_value_pair ** pEnvList,
                        int *curSize, int newSize )
{
    struct LSAPI_key_value_pair * pBuf;
    if ( *curSize >= newSize )
        return 0;
    if ( newSize > 8192 )
        return -1;
    pBuf = (struct LSAPI_key_value_pair *)realloc( *pEnvList, newSize *
                    sizeof(struct LSAPI_key_value_pair) );
    if ( pBuf )
    {
        *pEnvList = pBuf;
        *curSize = newSize;
        return 0;
    }
    else
        return -1;

}
