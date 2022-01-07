
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CString ;


 int memset (int *,int ,int) ;

void cstr_new(CString *cstr)
{
 memset (cstr, 0, sizeof(CString));
}
