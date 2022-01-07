
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int memcpy (int *,int const*,int) ;
 int serialize_dword (int,int **) ;

__attribute__((used)) static
void serialize_string(const BYTE *str, BYTE **ptr, DWORD len, DWORD width,
                      BOOL prepend_len)
{


    if (prepend_len)
    {
        serialize_dword(len,ptr);
    }
    memcpy(*ptr,str,len*width);
    *ptr+=len*width;
}
