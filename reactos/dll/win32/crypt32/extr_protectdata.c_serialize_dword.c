
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static
void serialize_dword(DWORD value,BYTE ** ptr)
{


    memcpy(*ptr,&value,sizeof(DWORD));
    *ptr+=sizeof(DWORD);
}
