
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pcre_uint32 ;
typedef int pcre_uchar ;
struct TYPE_4__ {int fcc; } ;
typedef TYPE_1__ compile_data ;
typedef int BOOL ;


 int GET (int*,int) ;
 int GET_EXTRALEN (int) ;
 int HAS_EXTRALEN (int) ;
 int IMM2_SIZE ;


 int OP_CLASS ;





 int OP_CRPOSPLUS ;
 int OP_CRPOSQUERY ;
 int OP_CRPOSRANGE ;
 int OP_CRPOSSTAR ;
 int OP_NCLASS ;
 int OP_NOTPROP ;
 int OP_PROP ;






 int OP_TABLE_LENGTH ;
 int OP_lengths ;
 int * PRIV (int ) ;
 scalar_t__ compare_opcodes (int const*,int ,TYPE_1__ const*,int*,int const*,int*) ;
 int* get_chr_property_list (int*,int ,int ,int*) ;
 int get_repeat_base (int) ;

__attribute__((used)) static void
auto_possessify(pcre_uchar *code, BOOL utf, const compile_data *cd)
{
register pcre_uchar c;
const pcre_uchar *end;
pcre_uchar *repeat_opcode;
pcre_uint32 list[8];
int rec_limit;

for (;;)
  {
  c = *code;







  if (c >= OP_TABLE_LENGTH) return;

  if (c >= 146 && c <= 134)
    {
    c -= get_repeat_base(c) - 146;
    end = (c <= 190) ?
      get_chr_property_list(code, utf, cd->fcc, list) : ((void*)0);
    list[1] = c == 146 || c == 160 || c == 149 || c == 130;

    rec_limit = 1000;
    if (end != ((void*)0) && compare_opcodes(end, utf, cd, list, end, &rec_limit))
      {
      switch(c)
        {
        case 146:
        *code += 154 - 146;
        break;

        case 192:
        *code += 154 - 192;
        break;

        case 160:
        *code += 158 - 160;
        break;

        case 196:
        *code += 158 - 196;
        break;

        case 149:
        *code += 156 - 149;
        break;

        case 194:
        *code += 156 - 194;
        break;

        case 130:
        *code += 152 - 130;
        break;

        case 190:
        *code += 152 - 190;
        break;
        }
      }
    c = *code;
    }
  else if (c == OP_CLASS || c == OP_NCLASS || c == 128)
    {

    if (c == 128)
      repeat_opcode = code + GET(code, 1);
    else

      repeat_opcode = code + 1 + (32 / sizeof(pcre_uchar));

    c = *repeat_opcode;
    if (c >= 201 && c <= 206)
      {

      end = get_chr_property_list(code, utf, cd->fcc, list);

      list[1] = (c & 1) == 0;

      rec_limit = 1000;
      if (compare_opcodes(end, utf, cd, list, end, &rec_limit))
        {
        switch (c)
          {
          case 201:
          case 205:
          *repeat_opcode = OP_CRPOSSTAR;
          break;

          case 204:
          case 208:
          *repeat_opcode = OP_CRPOSPLUS;
          break;

          case 203:
          case 207:
          *repeat_opcode = OP_CRPOSQUERY;
          break;

          case 202:
          case 206:
          *repeat_opcode = OP_CRPOSRANGE;
          break;
          }
        }
      }
    c = *code;
    }

  switch(c)
    {
    case 200:
    return;

    case 132:
    case 140:
    case 138:
    case 142:
    case 133:
    case 141:
    case 135:
    case 137:
    case 136:
    if (code[1] == OP_PROP || code[1] == OP_NOTPROP) code += 2;
    break;

    case 131:
    case 139:
    case 143:
    case 134:
    if (code[1 + IMM2_SIZE] == OP_PROP || code[1 + IMM2_SIZE] == OP_NOTPROP)
      code += 2;
    break;


    case 128:
    code += GET(code, 1);
    break;


    case 197:
    case 150:
    case 147:
    case 144:
    code += code[1];
    break;
    }



  code += PRIV(OP_lengths)[c];
  (void)(utf);

  }
}
