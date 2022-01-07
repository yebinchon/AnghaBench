
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int _unmarshal_uchar_array (unsigned char**,unsigned int*,unsigned char*,int) ;

__attribute__((used)) static BOOL _unmarshal_uuid(unsigned char **pData,
                            unsigned int *pDataLen,
                            unsigned char *dest)
{
    return _unmarshal_uchar_array(pData, pDataLen, dest, 16);
}
