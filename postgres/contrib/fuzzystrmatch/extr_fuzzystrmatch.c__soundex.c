
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertArg (char const*) ;
 size_t SOUNDEX_LEN ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ soundex_code (char const) ;
 scalar_t__ toupper (unsigned char) ;

__attribute__((used)) static void
_soundex(const char *instr, char *outstr)
{
 int count;

 AssertArg(instr);
 AssertArg(outstr);

 outstr[SOUNDEX_LEN] = '\0';


 while (!isalpha((unsigned char) instr[0]) && instr[0])
  ++instr;


 if (!instr[0])
 {
  outstr[0] = (char) 0;
  return;
 }


 *outstr++ = (char) toupper((unsigned char) *instr++);

 count = 1;
 while (*instr && count < SOUNDEX_LEN)
 {
  if (isalpha((unsigned char) *instr) &&
   soundex_code(*instr) != soundex_code(*(instr - 1)))
  {
   *outstr = soundex_code(instr[0]);
   if (*outstr != '0')
   {
    ++outstr;
    ++count;
   }
  }
  ++instr;
 }


 while (count < SOUNDEX_LEN)
 {
  *outstr = '0';
  ++outstr;
  ++count;
 }
}
