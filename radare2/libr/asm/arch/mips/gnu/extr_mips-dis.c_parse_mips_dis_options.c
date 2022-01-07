
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_mips_dis_option (char const*,int) ;

void
parse_mips_dis_options (const char *options)
{
  const char *option_end;

  if (!options) {
   return;
  }

  while (*options != '\0')
    {

      if (*options == ',')
 {
   options++;
   continue;
 }


      option_end = options + 1;
      while (*option_end != ',' && *option_end != '\0') {
       option_end++;
      }

      parse_mips_dis_option (options, option_end - options);



      options = option_end;
    }
}
