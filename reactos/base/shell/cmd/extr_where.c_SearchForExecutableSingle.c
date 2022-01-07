
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* TCHAR ;
typedef void** LPTSTR ;
typedef void** LPCTSTR ;
typedef int BOOL ;


 int CMDLINE_LENGTH ;
 int FALSE ;
 scalar_t__ IsExistingFile (void**) ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 void* _T (char) ;
 void** _tcschr (void**,void*) ;
 int _tcscpy (void**,void**) ;
 int _tcslen (void**) ;
 int _tcsncpy (void**,void**,size_t) ;
 int debugstr_aw (void**) ;

BOOL
SearchForExecutableSingle (LPCTSTR pFileName, LPTSTR pFullName, LPTSTR pPathExt, LPTSTR pDirectory)
{
    TCHAR szPathBuffer[CMDLINE_LENGTH], *pszPathEnd;
    LPTSTR s,f;

    *pFullName = _T('\0');

    TRACE ("SearchForExecutableSingle: \'%s\' in dir: \'%s\'\n",
        debugstr_aw(pFileName), debugstr_aw(pDirectory));

    pszPathEnd = szPathBuffer;
    if (pDirectory != ((void*)0))
    {
        _tcscpy(szPathBuffer, pDirectory);
        pszPathEnd += _tcslen(pszPathEnd);
        *pszPathEnd++ = _T('\\');
    }
    _tcscpy(pszPathEnd, pFileName);
    pszPathEnd += _tcslen(pszPathEnd);

    if (IsExistingFile (szPathBuffer))
    {
        TRACE ("Found: \'%s\'\n", debugstr_aw(szPathBuffer));
        _tcscpy (pFullName, szPathBuffer);
        return TRUE;
    }

    s = pPathExt;
    while (s && *s)
    {
        f = _tcschr (s, _T(';'));

        if (f)
        {
            _tcsncpy (pszPathEnd, s, (size_t)(f-s));
            pszPathEnd[f-s] = _T('\0');
            s = f + 1;
        }
        else
        {
            _tcscpy (pszPathEnd, s);
            s = ((void*)0);
        }

        if (IsExistingFile (szPathBuffer))
        {
            TRACE ("Found: \'%s\'\n", debugstr_aw(szPathBuffer));
            _tcscpy (pFullName, szPathBuffer);
            return TRUE;
        }
    }
    return FALSE;
}
