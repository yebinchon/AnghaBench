
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__at_eof (int *) ;
 scalar_t__ stbi__get8 (int *) ;
 scalar_t__ stbi__pnm_isspace (char) ;

__attribute__((used)) static void stbi__pnm_skip_whitespace(stbi__context *s, char *c)
{
   while (!stbi__at_eof(s) && stbi__pnm_isspace(*c))
      *c = (char) stbi__get8(s);
}
