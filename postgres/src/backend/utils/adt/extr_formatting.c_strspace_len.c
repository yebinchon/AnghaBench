
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
strspace_len(char *str)
{
 int len = 0;

 while (*str && isspace((unsigned char) *str))
 {
  str++;
  len++;
 }
 return len;
}
