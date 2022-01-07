
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAX_STR ;
 int * fgets (char*,int,int *) ;
 int printf (char*,long) ;
 int puts (char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 char toupper (char) ;

int
find_str (char *sz, FILE *p, int invert_search,
          int count_lines, int number_output, int ignore_case, int at_start, int literal_search,
    int at_end, int reg_express, int exact_match, int sub_dirs, int only_fname)
{
  int i, length;
  long line_number = 0, total_lines = 0;
  char *c, temp_str[MAX_STR], this_line[MAX_STR];


  if (ignore_case)
    {
      length = strlen (sz);
      for (i = 0; i < length; i++)
 sz[i] = toupper (sz[i]);
    }


  while (fgets (temp_str, MAX_STR, p) != ((void*)0))
    {

      length = strlen (temp_str);
      if (temp_str[length-1] == '\n')
 {
   temp_str[length-1] = '\0';
 }


      line_number++;
      strcpy (this_line, temp_str);


      if (ignore_case)
 {
   for (i = 0; i < length; i++)
     {
       temp_str[i] = toupper (temp_str[i]);
     }
 }





      c = strstr (temp_str, sz);

      if ( ((invert_search) ? (c == ((void*)0)) : (c != ((void*)0))) )
 {
   if (!count_lines)
     {
       if (number_output)
  printf ("%ld:", line_number);


       puts (this_line);
     }

   total_lines++;
 }
    }

  if (count_lines)
    {

      printf ("%ld\n", total_lines);
    }





  return (total_lines > 0 ? 1 : 0);
}
