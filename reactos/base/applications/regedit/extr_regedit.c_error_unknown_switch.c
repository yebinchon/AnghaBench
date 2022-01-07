
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;


 int exit (int) ;
 int fwprintf (int ,char*,char*,int) ;
 char* getAppName () ;
 scalar_t__ iswalpha (int) ;
 int stderr ;

__attribute__((used)) static void error_unknown_switch(WCHAR chu, LPWSTR s)
{
    if (iswalpha(chu))
    {
        fwprintf(stderr, L"%s: Undefined switch /%c!\n", getAppName(), chu);
    }
    else
    {
        fwprintf(stderr, L"%s: Alphabetic character is expected after '%c' "
                          L"in switch specification\n", getAppName(), *(s - 1));
    }
    exit(1);
}
