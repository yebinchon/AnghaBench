
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int add_assoc_string_ex (int *,char*,int,char*) ;

__attribute__((used)) static int add_associate_array( const char * pKey, int keyLen, const char * pValue, int valLen,
                         void * arg )
{
    add_assoc_string_ex((zval *)arg, (char *)pKey, keyLen, (char *)pValue);
    return 1;
}
