
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_digit (char) ;

__attribute__((used)) static const char *
getzname(const char *strp)
{
 char c;

 while ((c = *strp) != '\0' && !is_digit(c) && c != ',' && c != '-' &&
     c != '+')
  ++strp;
 return strp;
}
