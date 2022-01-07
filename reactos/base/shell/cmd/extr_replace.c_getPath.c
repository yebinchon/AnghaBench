
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__* LPTSTR ;


 int GetFullPathName (scalar_t__*,int ,int *,int *) ;
 int GetRootPath (scalar_t__*,int *,int ) ;
 int MAX_PATH ;
 scalar_t__ _T (char) ;
 int _tcslen (scalar_t__*) ;

void getPath(TCHAR* out, LPTSTR in)
{
    if (_tcslen(in) == 2 && in[1] == _T(':'))
        GetRootPath(in,out,MAX_PATH);
    else
        GetFullPathName (in, MAX_PATH, out, ((void*)0));
}
