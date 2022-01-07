
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* C; void* B; void* A; } ;
typedef TYPE_1__ LINE ;


 int DELIM ;
 int RDELIM_L ;
 scalar_t__ isspace (unsigned char) ;
 void* single_decode (char*,char**,char*,char const*) ;

__attribute__((used)) static bool
line_decode(char *s, const char *str, LINE *line)
{

 line->A = single_decode(s, &s, "line", str);
 if (*s++ != DELIM)
  return 0;
 line->B = single_decode(s, &s, "line", str);
 if (*s++ != DELIM)
  return 0;
 line->C = single_decode(s, &s, "line", str);
 if (*s++ != RDELIM_L)
  return 0;
 while (isspace((unsigned char) *s))
  s++;
 if (*s != '\0')
  return 0;
 return 1;
}
