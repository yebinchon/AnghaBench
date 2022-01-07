
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int FALSE ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int fprintf (int ,char*,int ) ;
 int getAppName () ;
 int lstrlenW (int *) ;
 int sscanf (char*,char*,int *,char*) ;
 int stderr ;

__attribute__((used)) static BOOL convertHexToDWord(WCHAR* str, DWORD *dw)
{
    char buf[9];
    char dummy;

    WideCharToMultiByte(CP_ACP, 0, str, -1, buf, 9, ((void*)0), ((void*)0));
    if (lstrlenW(str) > 8 || sscanf(buf, "%lx%c", dw, &dummy) != 1) {
        fprintf(stderr,"%S: ERROR, invalid hex value\n", getAppName());
        return FALSE;
    }
    return TRUE;
}
