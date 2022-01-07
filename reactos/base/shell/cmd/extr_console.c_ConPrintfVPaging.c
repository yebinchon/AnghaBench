
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int TCHAR ;
typedef int PCON_PAGER ;
typedef int * LPTSTR ;
typedef int BOOL ;


 int ConWritePaging (int ,int ,int ,int *,int ) ;
 int OUTPUT_BUFFER_SIZE ;
 int PagePrompt ;
 int TRUE ;
 int _vstprintf (int *,int *,int ) ;
 int wcslen (int *) ;

BOOL ConPrintfVPaging(PCON_PAGER Pager, BOOL StartPaging, LPTSTR szFormat, va_list arg_ptr)
{

    TCHAR szOut[OUTPUT_BUFFER_SIZE];


    if (szFormat == ((void*)0))
        return TRUE;

              _vstprintf(szOut, szFormat, arg_ptr);


    return ConWritePaging(Pager, PagePrompt, StartPaging,
                          szOut, wcslen(szOut));
}
