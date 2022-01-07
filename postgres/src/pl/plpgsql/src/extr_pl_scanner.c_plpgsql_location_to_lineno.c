
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* cur_line_end ;
 int cur_line_num ;
 char const* cur_line_start ;
 int location_lineno_init () ;
 char* scanorig ;
 char* strchr (char const*,char) ;

int
plpgsql_location_to_lineno(int location)
{
 const char *loc;

 if (location < 0 || scanorig == ((void*)0))
  return 0;
 loc = scanorig + location;


 if (loc < cur_line_start)
  location_lineno_init();

 while (cur_line_end != ((void*)0) && loc > cur_line_end)
 {
  cur_line_start = cur_line_end + 1;
  cur_line_num++;
  cur_line_end = strchr(cur_line_start, '\n');
 }

 return cur_line_num;
}
