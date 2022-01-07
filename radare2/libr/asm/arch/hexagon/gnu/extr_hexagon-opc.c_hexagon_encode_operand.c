
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_5__ {int flags; char enc_letter; int shift_count; unsigned int bits; char* fmt; } ;
typedef TYPE_1__ hexagon_operand ;
struct TYPE_6__ {char* enc; int attributes; } ;
typedef TYPE_2__ hexagon_opcode ;
typedef int hexagon_insn ;




 int FALSE ;
 long HEXAGON_HI16 (unsigned long) ;
 long HEXAGON_LO16 (unsigned long) ;
 int HEXAGON_OPERAND_IS_HI16 ;
 int HEXAGON_OPERAND_IS_LO16 ;
 int HEXAGON_OPERAND_IS_NEGATIVE ;
 int HEXAGON_OPERAND_IS_PAIR ;
 int HEXAGON_OPERAND_IS_SIGNED ;
 int HEXAGON_OPERAND_IS_SUBSET ;
 long HEXAGON_SUBREGS_TO (long,int) ;
 int ISSPACE (char) ;
 char TOLOWER (char) ;
 char TOUPPER (char) ;
 int TRUE ;
 long hexagon_extend (long*,unsigned int,int) ;
 int sprintf (char*,char*,int,int,...) ;
 size_t strlen (char*) ;

int
hexagon_encode_operand
(const hexagon_operand *operand, hexagon_insn *insn,
 const hexagon_opcode *opcode, long avalue, long *xvalue, int is_x, int is_rel,
 char **errmsg)
{
  char enc_letter;
  int shift_count = 0;
  int num_bits = 0;
  size_t len = strlen (opcode->enc);
  unsigned bits;
  long smin, smax;
  unsigned long umin, umax;
  long xer, xed;
  union
    {
      long s;
      unsigned long u;
    } value;
  int is_s;
  ptrdiff_t i;
  static char buf [500];

  value.s = avalue;

  is_x = is_x && xvalue;
  is_s = (operand->flags & HEXAGON_OPERAND_IS_SIGNED);

  enc_letter = operand->enc_letter;


  if (FALSE && is_rel)
    switch (opcode->attributes
            & (129 | 128))
      {
      case 129:
        enc_letter = TOLOWER (enc_letter);
        break;

      case 128:
        enc_letter = TOUPPER (enc_letter);
        break;
      }

  if (operand->shift_count)
    {

      if (value.s & (~(~0L << operand->shift_count)))
        {
          if (errmsg)
            {
              sprintf (buf, "low %d bits of immediate %ld must be zero",
                       operand->shift_count, value.s);
              *errmsg = buf;
            }
          return FALSE;
        }
    }

  if (operand->flags & HEXAGON_OPERAND_IS_LO16)
    value.s = HEXAGON_LO16 (value.u);
  else if (operand->flags & HEXAGON_OPERAND_IS_HI16)
    value.s = HEXAGON_HI16 (value.u);
  else if (operand->flags & HEXAGON_OPERAND_IS_SUBSET)
    value.s = HEXAGON_SUBREGS_TO (value.s, operand->flags & HEXAGON_OPERAND_IS_PAIR);



  bits = operand->bits + operand->shift_count;
  smax = ~(~0L << (bits - 1));
  smin = (~0L << (bits - 1)) + ((operand->flags & HEXAGON_OPERAND_IS_NEGATIVE)? 1: 0);
  umax = ~(~0UL << bits);
  umin = 0UL;

  xed = value.s;
  xer = hexagon_extend (&xed, bits, is_s);

  if (is_x)
    {
      is_s = (xed < 0);

      *xvalue = xer;
      value.s = xed;
    }


  if (is_s)
    {
      if (value.s < smin || (smax > 0 && value.s > smax))
 {
   if (errmsg)
     {
       sprintf (buf, "value %ld out of range: %ld-%ld", value.s, smin, smax);
       *errmsg = buf;
     }
   return FALSE;
 }
    }
  else
    {
      if (value.u < umin || (umax > 0 && value.u > umax))
 {
   if (errmsg)
     {
       sprintf (buf, "value %lu out of range: %lu-%lu", value.u, umin, umax);
       *errmsg = buf;
     }
   return FALSE;
 }
    }


  if (!is_x)
    value.s >>= operand->shift_count;


  for (i = len - 1; i >= 0; i--)
    if (!ISSPACE (opcode->enc [i]))
      {
        if (opcode->enc [i] == enc_letter)
          {

            (*insn) &= ~(1 << shift_count);

            (*insn) |= (value.s & 1) << shift_count;
            value.s >>= 1;
            num_bits++;
          }
        shift_count++;
      }


  if (num_bits != operand->bits)
    {
      if (errmsg)
        {
          sprintf (buf, "did not encode expected number of bits: %d != %d\n"
                   "enc = %s\n  operand = %s",
                   num_bits, operand->bits, opcode->enc, operand->fmt);
          *errmsg = buf;
        }
      return FALSE;
    }

  return TRUE;
}
