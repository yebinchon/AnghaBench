
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_uchar ;
typedef scalar_t__ BOOL ;


 int GET (int const*,int) ;
 int GET_EXTRALEN (int const) ;
 int HAS_EXTRALEN (int const) ;
 int IMM2_SIZE ;


 int OP_END ;
 int const OP_NOTPROP ;
 int const OP_PROP ;



 int OP_RECURSE ;
 int OP_XCLASS ;
 int OP_lengths ;
 int * PRIV (int ) ;

__attribute__((used)) static const pcre_uchar *
find_recurse(const pcre_uchar *code, BOOL utf)
{
for (;;)
  {
  register pcre_uchar c = *code;
  if (c == OP_END) return ((void*)0);
  if (c == OP_RECURSE) return code;





  if (c == OP_XCLASS) code += GET(code, 1);






  else
    {
    switch(c)
      {
      case 131:
      case 139:
      case 137:
      case 141:
      case 132:
      case 140:
      case 134:
      case 136:
      case 135:
      if (code[1] == OP_PROP || code[1] == OP_NOTPROP) code += 2;
      break;

      case 133:
      case 130:
      case 138:
      case 142:
      if (code[1 + IMM2_SIZE] == OP_PROP || code[1 + IMM2_SIZE] == OP_NOTPROP)
        code += 2;
      break;

      case 196:
      case 149:
      case 146:
      case 143:
      code += code[1];
      break;
      }



    code += PRIV(OP_lengths)[c];
    (void)(utf);

    }
  }
}
