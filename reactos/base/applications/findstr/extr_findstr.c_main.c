
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _finddata_t {char* name; } ;
typedef char TCHAR ;
typedef int LPTSTR ;
typedef int FILE ;


 int CharToOem (char*,char*) ;
 int GetModuleHandle (int *) ;
 int IDS_CANNOT_OPEN ;
 int IDS_NO_SUCH_FILE ;
 int LoadString (int ,int ,int ,int) ;
 int _findclose (int) ;
 int _findfirst (char*,struct _finddata_t*) ;
 scalar_t__ _findnext (int,struct _finddata_t*) ;
 int exit (int) ;
 int fclose (int *) ;
 int find_str (char*,int *,int,int,int,int,int,int,int,int,int,int,int) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char*) ;
 int stderr ;
 int * stdin ;
 int usage () ;

int
main (int argc, char **argv)
{
  char *opt, *needle = ((void*)0);
  int ret = 0;
  TCHAR lpMessage[4096];

  int invert_search = 0;
  int count_lines = 0;
  int number_output = 0;
  int ignore_case = 0;
  int at_start = 0;
  int at_end = 0;
  int reg_express = 0;
  int exact_match = 0;
  int sub_dirs= 0;
  int only_fname= 0;
  int literal_search=0;

  FILE *pfile;
  int hfind;
  struct _finddata_t finddata;


  while ((--argc) && (needle == ((void*)0)))
    {
      if (*(opt = *++argv) == '/')
        {
          switch (opt[1])
     {
       case 'b':
       case 'B':
         at_start = 1;
         break;






       case 'e':
       case 'E':
         at_end = 1;
         break;

       case 'i':
       case 'I':
         ignore_case = 1;
         break;

       case 'm':
       case 'M':
         only_fname = 1;
         break;

       case 'n':
       case 'N':
         number_output = 1;
         break;

       case 'r':
       case 'R':
         reg_express = 1;
         break;

       case 's':
       case 'S':
         sub_dirs = 1;
         break;

       case 'v':
       case 'V':
         invert_search = 1;
         break;

       case 'x':
       case 'X':
         exact_match = 1;
         break;

       default:
         usage ();
         exit (2);
         break;
     }
        }
      else
        {

   if (needle == ((void*)0))
     {

              needle = *argv;
     }
 }
    }


  if (needle == ((void*)0))
    {

      usage ();
      exit (1);
    }


  if (argc == 0)
    {
      ret = find_str (needle, stdin, invert_search, count_lines,
                      number_output, ignore_case, at_start, literal_search, at_end, reg_express, exact_match,
       sub_dirs, only_fname);
    }

  while (--argc >= 0)
    {
      hfind = _findfirst (*++argv, &finddata);
      if (hfind < 0)
 {


   LoadString( GetModuleHandle(((void*)0)), IDS_NO_SUCH_FILE, (LPTSTR)lpMessage, 4096);
   CharToOem(lpMessage, lpMessage);
   fprintf (stderr, lpMessage, *argv);
 }
      else
        {

   do
            {

       if ((pfile = fopen (finddata.name, "r")) != ((void*)0))
         {
           printf ("---------------- %s\n", finddata.name);
           ret = find_str (needle, pfile, invert_search, count_lines,
                      number_output, ignore_case, at_start, literal_search, at_end, reg_express, exact_match,
       sub_dirs, only_fname);
           fclose (pfile);
         }
        else
         {
           LoadString(GetModuleHandle(((void*)0)), IDS_CANNOT_OPEN, (LPTSTR)lpMessage, 4096);
           CharToOem(lpMessage, lpMessage);
           fprintf (stderr, lpMessage,
             finddata.name);
                }
     }
          while (_findnext(hfind, &finddata) > 0);
        }
      _findclose(hfind);
    }





  exit ( (ret ? 0 : 1) );
}
