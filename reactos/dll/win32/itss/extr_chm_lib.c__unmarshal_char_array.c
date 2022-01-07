
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcpy (char*,unsigned char*,int) ;

__attribute__((used)) static BOOL _unmarshal_char_array(unsigned char **pData,
                                  unsigned int *pLenRemain,
                                  char *dest,
                                  int count)
{
    if (count <= 0 || (unsigned int)count > *pLenRemain)
        return FALSE;
    memcpy(dest, (*pData), count);
    *pData += count;
    *pLenRemain -= count;
    return TRUE;
}
