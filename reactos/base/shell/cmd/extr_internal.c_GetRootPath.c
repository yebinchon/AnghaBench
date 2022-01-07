
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int INT ;


 int GetCurrentDirectory (int,scalar_t__*) ;
 scalar_t__ _T (char) ;
 int * _tgetdcwd (int,scalar_t__*,int) ;

INT GetRootPath(TCHAR *InPath,TCHAR *OutPath,INT size)
{
    if (InPath[0] && InPath[1] == _T(':'))
    {
        INT t=0;

        if ((InPath[0] >= _T('0')) && (InPath[0] <= _T('9')))
        {
            t = (InPath[0] - _T('0')) +28;
        }

        if ((InPath[0] >= _T('a')) && (InPath[0] <= _T('z')))
        {
            t = (InPath[0] - _T('a')) +1;
            InPath[0] = t + _T('A') - 1;
        }

        if ((InPath[0] >= _T('A')) && (InPath[0] <= _T('Z')))
        {
            t = (InPath[0] - _T('A')) +1;
        }

        return _tgetdcwd(t,OutPath,size) == ((void*)0);
    }


    return !GetCurrentDirectory(size,OutPath);
}
