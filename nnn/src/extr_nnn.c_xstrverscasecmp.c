
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char uchar ;
typedef int int8_t ;






 char TOUPPER (char const) ;


 scalar_t__ xisdigit (char const) ;

__attribute__((used)) static int xstrverscasecmp(const char * const s1, const char * const s2)
{
 const uchar *p1 = (const uchar *)s1;
 const uchar *p2 = (const uchar *)s2;
 int state, diff;
 uchar c1, c2;





 static const uint8_t next_state[] = {

             131, 132, 130,
             131, 132, 132,
             131, 133, 133,
             131, 133, 130
 };

 static const int8_t result_type[] __attribute__ ((aligned)) = {


             129, 129, 129, 129, 128, 129, 129, 129, 129,
             129, -1, -1, 1, 128, 128, 1, 128, 128,
             129, 129, 129, 129, 129, 129, 129, 129, 129,
             129, 1, 1, -1, 129, 129, -1, 129, 129
 };

 if (p1 == p2)
  return 0;

 c1 = TOUPPER(*p1);
 ++p1;
 c2 = TOUPPER(*p2);
 ++p2;


 state = 131 + ((c1 == '0') + (xisdigit(c1) != 0));

 while ((diff = c1 - c2) == 0) {
  if (c1 == '\0')
   return diff;

  state = next_state[state];
  c1 = TOUPPER(*p1);
  ++p1;
  c2 = TOUPPER(*p2);
  ++p2;
  state += (c1 == '0') + (xisdigit(c1) != 0);
 }

 state = result_type[state * 3 + (((c2 == '0') + (xisdigit(c2) != 0)))];

 switch (state) {
 case 129:
  return diff;
 case 128:
  while (xisdigit(*p1++))
   if (!xisdigit(*p2++))
    return 1;
  return xisdigit(*p2) ? -1 : diff;
 default:
  return state;
 }
}
