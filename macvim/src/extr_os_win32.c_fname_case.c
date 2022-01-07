
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char char_u ;
struct TYPE_4__ {char* cFileName; char* cAlternateFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef char WCHAR ;
typedef int HANDLE ;


 int FindClose (int ) ;
 int FindFirstFile (char*,TYPE_1__*) ;
 scalar_t__ FindNextFile (int ,TYPE_1__*) ;
 scalar_t__ GetACP () ;
 int INVALID_HANDLE_VALUE ;
 char NUL ;
 scalar_t__ OK ;
 int STRCPY (char*,char*) ;
 scalar_t__ STRLEN (char*) ;
 int _MAX_PATH ;
 scalar_t__ _stricoll (char*,char*) ;
 int enc_codepage ;
 scalar_t__ enc_dbcs ;
 char* enc_to_utf16 (char*,int *) ;
 scalar_t__ fname_casew (char*,int) ;
 scalar_t__ isalpha (char) ;
 int mb_ptr2len (char*) ;
 char psepc ;
 int slash_adjust (char*) ;
 scalar_t__ strcoll (char*,char*) ;
 int strlen (char*) ;
 int stub1 (char*) ;
 char* utf16_to_enc (char*,int *) ;
 int vim_free (char*) ;
 int vim_strncpy (char*,char*,int) ;
 int wcscpy (char*,char*) ;

void
fname_case(
    char_u *name,
    int len)
{
    char szTrueName[_MAX_PATH + 2];
    char szTrueNameTemp[_MAX_PATH + 2];
    char *ptrue, *ptruePrev;
    char *porig, *porigPrev;
    int flen;
    WIN32_FIND_DATA fb;
    HANDLE hFind;
    int c;
    int slen;

    flen = (int)STRLEN(name);
    if (flen == 0)
 return;

    slash_adjust(name);
    if (flen > _MAX_PATH)
 return;


    porig = name;
    ptrue = szTrueName;

    if (isalpha(porig[0]) && porig[1] == ':')
    {

 *ptrue++ = *porig++;
 *ptrue++ = *porig++;
    }
    *ptrue = NUL;

    while (*porig != NUL)
    {

 while (*porig == psepc)
     *ptrue++ = *porig++;

 ptruePrev = ptrue;
 porigPrev = porig;
 while (*porig != NUL && *porig != psepc)
 {
  *ptrue++ = *porig++;
 }
 *ptrue = NUL;



 STRCPY(szTrueNameTemp, szTrueName);
 slen = (int)strlen(szTrueNameTemp);
 if (*porig == psepc && slen + 2 < _MAX_PATH)
     STRCPY(szTrueNameTemp + slen, "\\*");


 if (ptrue > ptruePrev
  && (ptruePrev[0] != '.'
      || (ptruePrev[1] != NUL
   && (ptruePrev[1] != '.' || ptruePrev[2] != NUL)))
  && (hFind = FindFirstFile(szTrueNameTemp, &fb))
            != INVALID_HANDLE_VALUE)
 {
     c = *porig;
     *porig = NUL;




     if (_stricoll(porigPrev, fb.cFileName) == 0
      || (len > 0
   && (_stricoll(porigPrev, fb.cAlternateFileName) == 0
       && (int)(ptruePrev - szTrueName)
        + (int)strlen(fb.cFileName) < len)))
     {
  STRCPY(ptruePrev, fb.cFileName);



  while (FindNextFile(hFind, &fb))
  {
      if (*fb.cAlternateFileName != NUL
       && (strcoll(porigPrev, fb.cFileName) == 0
    || (len > 0
        && (_stricoll(porigPrev,
         fb.cAlternateFileName) == 0
        && (int)(ptruePrev - szTrueName)
      + (int)strlen(fb.cFileName) < len))))
      {
   STRCPY(ptruePrev, fb.cFileName);
   break;
      }
  }
     }
     FindClose(hFind);
     *porig = c;
     ptrue = ptruePrev + strlen(ptruePrev);
 }
    }

    STRCPY(name, szTrueName);
}
