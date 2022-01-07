
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_bool ;
typedef int wchar_t ;
struct TYPE_3__ {int finished; int* dirw; int handle; int fileinfo; scalar_t__ offset; } ;
typedef int HANDLE ;
typedef TYPE_1__ DIR ;


 int FIND_FIRST_EX_LARGE_FETCH ;
 int FindClose (int ) ;
 int FindExInfoBasic ;
 int FindExSearchNameMatch ;
 int FindFirstFileExW (int*,int ,int *,int ,int *,int ) ;
 int INVALID_HANDLE_VALUE ;
 scalar_t__ PHP_WIN32_IOUTIL_IS_LETTERW (int) ;
 scalar_t__ PHP_WIN32_IOUTIL_IS_SLASHW (int) ;
 int* PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW ;
 size_t PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW ;
 size_t _MAX_PATH ;
 int free (int*) ;
 scalar_t__ malloc (size_t) ;
 int wcscat (int*,char*) ;
 int wcscpy (int*,int*) ;
 size_t wcslen (int*) ;

int rewinddir(DIR *dp)
{

 wchar_t *filespecw;
 HANDLE handle;
 size_t dirw_len, filespecw_len, index;
 zend_bool might_need_prefix;

 FindClose(dp->handle);

 dp->offset = 0;
 dp->finished = 0;


 dirw_len = wcslen((wchar_t *)dp->dirw);

 might_need_prefix = dirw_len >= 3 && PHP_WIN32_IOUTIL_IS_LETTERW(dp->dirw[0]) && L':' == dp->dirw[1] && PHP_WIN32_IOUTIL_IS_SLASHW(dp->dirw[2]);

 filespecw_len = dirw_len + 2;
 if (filespecw_len >= _MAX_PATH && might_need_prefix) {
  filespecw_len += PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW;
 }

 filespecw = (wchar_t *)malloc((filespecw_len + 1)*sizeof(wchar_t));
 if (filespecw == ((void*)0)) {
  return -1;
 }

 if (filespecw_len >= _MAX_PATH && might_need_prefix) {
  wcscpy(filespecw, PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW);
  wcscpy(filespecw + PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW, dp->dirw);
  index = dirw_len + PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW - 1;
 } else {
  wcscpy(filespecw, dp->dirw);
  index = dirw_len - 1;
 }

 if (index >= 0 && (filespecw[index] == L'/' ||
    (filespecw[index] == L'\\' && index == 0)))
  filespecw[index] = L'\0';
 wcscat(filespecw, L"\\*");

 if ((handle = FindFirstFileExW(filespecw, FindExInfoBasic, &(dp->fileinfo), FindExSearchNameMatch, ((void*)0), FIND_FIRST_EX_LARGE_FETCH)) == INVALID_HANDLE_VALUE) {
  dp->finished = 1;
 }

 free(filespecw);
 dp->handle = handle;

 return 0;
}
