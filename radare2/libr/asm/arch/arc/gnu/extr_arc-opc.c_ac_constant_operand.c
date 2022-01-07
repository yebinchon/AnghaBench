
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_operand {int fmt; } ;



int
ac_constant_operand (const struct arc_operand *op)
{
  switch (op->fmt)
    {
    case '@':

      case 'u':
      case 'K':
      case 'L':
      case 'o':
      case 'e':
      case 'E':
      case 'j':
      case 'J':
      case 'k':
      case 'l':
      case 'm':
      case 'M':
      case 'O':
      case 'R':

      case '?':
      case '\14':
      case '\20':
      case '\21':
      case '\22':
      case '\23':
      case '\24':
      case '\25':

        return 1;
    }
    return 0;
}
