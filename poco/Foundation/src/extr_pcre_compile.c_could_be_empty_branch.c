
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t const* group; struct TYPE_5__* prev; } ;
typedef TYPE_1__ recurse_check ;
typedef size_t pcre_uchar ;
struct TYPE_6__ {size_t* start_code; size_t* start_workspace; size_t const* hwm; } ;
typedef TYPE_2__ compile_data ;
typedef void* BOOL ;


 void* FALSE ;
 size_t GET (size_t const*,int) ;
 int GET2 (size_t const*,int) ;
 int GET_EXTRALEN (size_t const) ;
 int HAS_EXTRALEN (size_t const) ;
 int IMM2_SIZE ;
 int LINK_SIZE ;





 size_t OP_ASSERT ;
 size_t OP_BRA ;
 size_t OP_BRAMINZERO ;
 size_t OP_BRAPOS ;
 size_t OP_BRAPOSZERO ;
 size_t OP_BRAZERO ;
 size_t OP_CBRA ;
 size_t OP_CBRAPOS ;



 size_t OP_COND ;
 size_t OP_ONCE ;
 size_t OP_ONCE_NC ;
 size_t OP_RECURSE ;
 size_t OP_SBRA ;
 size_t OP_SBRAPOS ;
 size_t OP_SCBRA ;
 size_t OP_SCBRAPOS ;
 size_t OP_SCOND ;
 size_t OP_SKIPZERO ;
 int OP_lengths ;
 int* PRIV (int ) ;
 void* TRUE ;
 size_t* first_significant_code (size_t const*,void*) ;

__attribute__((used)) static BOOL
could_be_empty_branch(const pcre_uchar *code, const pcre_uchar *endcode,
  BOOL utf, compile_data *cd, recurse_check *recurses)
{
register pcre_uchar c;
recurse_check this_recurse;

for (code = first_significant_code(code + PRIV(OP_lengths)[*code], TRUE);
     code < endcode;
     code = first_significant_code(code + PRIV(OP_lengths)[c], TRUE))
  {
  const pcre_uchar *ccode;

  c = *code;




  if (c == OP_ASSERT)
    {
    do code += GET(code, 1); while (*code == 236);
    c = *code;
    continue;
    }
  if (c == OP_RECURSE)
    {
    const pcre_uchar *scode = cd->start_code + GET(code, 1);
    const pcre_uchar *endgroup = scode;
    BOOL empty_branch;





    if (cd->start_workspace != ((void*)0))
      {
      const pcre_uchar *tcode;
      for (tcode = cd->start_workspace; tcode < cd->hwm; tcode += LINK_SIZE)
        if ((int)GET(tcode, 0) == (int)(code + 1 - cd->start_code)) return TRUE;
      if (GET(scode, 1) == 0) return TRUE;
      }






    do endgroup += GET(endgroup, 1); while (*endgroup == 236);
    if (code >= scode && code <= endgroup) continue;
    else
      {
      recurse_check *r = recurses;
      for (r = recurses; r != ((void*)0); r = r->prev)
        if (r->group == scode) break;
      if (r != ((void*)0)) continue;
      }




    empty_branch = FALSE;
    this_recurse.prev = recurses;
    this_recurse.group = scode;

    do
      {
      if (could_be_empty_branch(scode, endcode, utf, cd, &this_recurse))
        {
        empty_branch = TRUE;
        break;
        }
      scode += GET(scode, 1);
      }
    while (*scode == 236);

    if (!empty_branch) return FALSE;
    continue;
    }



  if (c == OP_BRAZERO || c == OP_BRAMINZERO || c == OP_SKIPZERO ||
      c == OP_BRAPOSZERO)
    {
    code += PRIV(OP_lengths)[c];
    do code += GET(code, 1); while (*code == 236);
    c = *code;
    continue;
    }




  if (c == OP_SBRA || c == OP_SBRAPOS ||
      c == OP_SCBRA || c == OP_SCBRAPOS)
    {
    do code += GET(code, 1); while (*code == 236);
    c = *code;
    continue;
    }



  if (c == OP_BRA || c == OP_BRAPOS ||
      c == OP_CBRA || c == OP_CBRAPOS ||
      c == OP_ONCE || c == OP_ONCE_NC ||
      c == OP_COND || c == OP_SCOND)
    {
    BOOL empty_branch;
    if (GET(code, 1) == 0) return TRUE;





    if (c == OP_COND && code[GET(code, 1)] != 236)
      code += GET(code, 1);
    else
      {
      empty_branch = FALSE;
      do
        {
        if (!empty_branch && could_be_empty_branch(code, endcode, utf, cd,
          recurses)) empty_branch = TRUE;
        code += GET(code, 1);
        }
      while (*code == 236);
      if (!empty_branch) return FALSE;
      }

    c = *code;
    continue;
    }



  switch (c)
    {







    case 128:
    ccode = code += GET(code, 1);
    goto CHECK_CLASS_REPEAT;


    case 230:
    case 199:
    ccode = code + PRIV(OP_lengths)[230];


    CHECK_CLASS_REPEAT:


    switch (*ccode)
      {
      case 218:
      case 226:
      case 220:
      case 228:
      case 221:
      case 223:
      break;

      default:
      case 225:
      case 229:
      case 224:
      return FALSE;

      case 219:
      case 227:
      case 222:
      if (GET2(ccode, 1) > 0) return FALSE;
      break;
      }
    break;



    case 235:
    case 237:
    case 234:

    case 154:
    case 176:
    case 233:

    case 168:
    case 213:
    case 167:
    case 131:
    case 214:

    case 169:
    case 217:
    case 166:
    case 130:
    case 165:
    case 129:

    case 232:
    case 231:
    case 198:
    case 195:

    case 164:
    case 163:
    case 207:
    case 206:

    case 186:
    case 185:
    case 194:
    case 193:

    case 162:
    case 161:
    case 184:
    case 183:

    case 216:
    case 215:
    case 197:
    case 196:

    case 141:
    case 145:
    case 140:
    case 146:

    return FALSE;




    case 135:
    case 143:
    case 138:
    case 136:
    case 144:
    case 139:
    if (code[1] == 154 || code[1] == 176) code += 2;
    break;



    case 134:
    case 142:
    case 137:
    if (code[1 + IMM2_SIZE] == 154 || code[1 + IMM2_SIZE] == 176)
      code += 2;
    break;



    case 212:
    case 211:
    case 210:
    case 209:
    case 236:
    return TRUE;
    case 208:
    case 153:
    case 150:
    case 147:
    code += code[1];
    break;



    default:
    break;
    }
  }

return TRUE;
}
