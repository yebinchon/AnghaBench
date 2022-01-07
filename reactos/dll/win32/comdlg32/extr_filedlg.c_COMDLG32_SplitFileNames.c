
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef char* LPWSTR ;


 char* heap_alloc (int) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char*) ;

int COMDLG32_SplitFileNames(LPWSTR lpstrEdit, UINT nStrLen, LPWSTR *lpstrFileList, UINT *sizeUsed)
{
 UINT nStrCharCount = 0;
 UINT nFileIndex = 0;
 UINT nFileCount = 0;



 *lpstrFileList = heap_alloc((nStrLen + 2) * sizeof(WCHAR));
 *sizeUsed = 0;


 while ( nStrCharCount <= nStrLen )
 {
   if ( lpstrEdit[nStrCharCount]=='"' )
   {
     nStrCharCount++;
     while ((nStrCharCount <= nStrLen) && (lpstrEdit[nStrCharCount]!='"'))
     {
       (*lpstrFileList)[nFileIndex++] = lpstrEdit[nStrCharCount];
       nStrCharCount++;
     }
     (*lpstrFileList)[nFileIndex++] = 0;
     nFileCount++;
   }
   nStrCharCount++;
 }


 if ((nStrLen > 0) && (nFileIndex == 0) )
 {
   lstrcpyW(*lpstrFileList, lpstrEdit);
   nFileIndex = lstrlenW(lpstrEdit) + 1;
   nFileCount = 1;
 }


        (*lpstrFileList)[nFileIndex++] = '\0';

        *sizeUsed = nFileIndex;
 return nFileCount;
}
