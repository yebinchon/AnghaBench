
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* soundex_table ;
 char toupper (unsigned char) ;

__attribute__((used)) static char
soundex_code(char letter)
{
 letter = toupper((unsigned char) letter);

 if (letter >= 'A' && letter <= 'Z')
  return soundex_table[letter - 'A'];
 return letter;
}
