
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int TCHAR ;
typedef int SIZE_T ;
typedef int * LPTSTR ;
typedef int FILE ;


 int CMDLINE_LENGTH ;
 int WARN (char*) ;
 int _T (char) ;
 scalar_t__ _fgetts (int *,int ,int *) ;
 int _tcscpy (int *,int *) ;
 int _tcslen (int *) ;
 int * cmd_alloc (int) ;
 int cmd_free (int *) ;
 int * cmd_realloc (int *,int) ;

__attribute__((used)) static LPTSTR ReadFileContents(FILE *InputFile, TCHAR *Buffer)
{
    SIZE_T Len = 0;
    SIZE_T AllocLen = 1000;

    LPTSTR Contents = cmd_alloc(AllocLen * sizeof(TCHAR));
    if (!Contents)
    {
        WARN("Cannot allocate memory for Contents!\n");
        return ((void*)0);
    }

    while (_fgetts(Buffer, CMDLINE_LENGTH, InputFile))
    {
        ULONG_PTR CharsRead = _tcslen(Buffer);
        while (Len + CharsRead >= AllocLen)
        {
            LPTSTR OldContents = Contents;
            Contents = cmd_realloc(Contents, (AllocLen *= 2) * sizeof(TCHAR));
            if (!Contents)
            {
                WARN("Cannot reallocate memory for Contents!\n");
                cmd_free(OldContents);
                return ((void*)0);
            }
        }
        _tcscpy(&Contents[Len], Buffer);
        Len += CharsRead;
    }

    Contents[Len] = _T('\0');
    return Contents;
}
