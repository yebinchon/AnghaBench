
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int ENABLE_LINE_INPUT ;
 int ENABLE_PROCESSED_INPUT ;
 scalar_t__ FILE_TYPE_CHAR ;
 scalar_t__ GetConsoleMode (scalar_t__,int*) ;
 scalar_t__ GetFileType (scalar_t__) ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (scalar_t__,int) ;
 scalar_t__ WriteFile (scalar_t__,char const*,int,int*,int *) ;
 int strlen (char const*) ;

char *getpass (const char * prompt)
{
  static char input[256];
  HANDLE in;
  HANDLE err;
  DWORD count;

  in = GetStdHandle (STD_INPUT_HANDLE);
  err = GetStdHandle (STD_ERROR_HANDLE);

  if (in == INVALID_HANDLE_VALUE || err == INVALID_HANDLE_VALUE)
    return ((void*)0);

  if (WriteFile (err, prompt, strlen (prompt), &count, ((void*)0)))
    {
      int istty = (GetFileType (in) == FILE_TYPE_CHAR);
      DWORD old_flags;
      int rc;

      if (istty)
    {
      if (GetConsoleMode (in, &old_flags))
        SetConsoleMode (in, ENABLE_LINE_INPUT | ENABLE_PROCESSED_INPUT);
      else
        istty = 0;
    }


      count = 0;
      while (1)
    {
      DWORD dummy;
      char one_char;

      rc = ReadFile (in, &one_char, 1, &dummy, ((void*)0));
      if (rc == 0)
        break;
      if (one_char == '\r')
        {

          if (istty)
        continue;
          else
        break;
        }
      if (one_char == '\n')
        break;

      if (count < sizeof (input) - 1)
        input[count++] = one_char;
    }
      input[count] = '\0';

      WriteFile (err, "\r\n", 2, &count, ((void*)0));
      if (istty)
    SetConsoleMode (in, old_flags);
      if (rc)
    return input;
    }

  return ((void*)0);
}
