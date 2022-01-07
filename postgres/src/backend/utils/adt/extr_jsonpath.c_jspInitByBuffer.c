
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_13__ {int first; int last; } ;
struct TYPE_12__ {int nelems; int elems; } ;
struct TYPE_11__ {int flags; int expr; int patternlen; char* pattern; } ;
struct TYPE_10__ {int left; int right; } ;
struct TYPE_9__ {int datalen; char* data; } ;
struct TYPE_14__ {int arg; TYPE_5__ anybounds; TYPE_4__ array; TYPE_3__ like_regex; TYPE_2__ args; TYPE_1__ value; } ;
struct TYPE_15__ {char* base; int type; int nextPos; TYPE_6__ content; } ;
typedef TYPE_7__ JsonPathItem ;


 int ERROR ;
 int INTALIGN (uintptr_t) ;
 int elog (int ,char*,int) ;
 int read_byte (int,char*,int) ;
 int read_int32 (int,char*,int) ;
 int read_int32_n (int ,char*,int,int) ;

void
jspInitByBuffer(JsonPathItem *v, char *base, int32 pos)
{
 v->base = base + pos;

 read_byte(v->type, base, pos);
 pos = INTALIGN((uintptr_t) (base + pos)) - (uintptr_t) base;
 read_int32(v->nextPos, base, pos);

 switch (v->type)
 {
  case 138:
  case 134:
  case 161:
  case 165:
  case 164:
  case 129:
  case 133:
  case 169:
  case 154:
  case 162:
  case 158:
  case 148:
  case 147:
   break;
  case 149:
  case 131:
  case 128:
   read_int32(v->content.value.datalen, base, pos);

  case 137:
  case 163:
   v->content.value.data = base + pos;
   break;
  case 167:
  case 136:
  case 168:
  case 130:
  case 141:
  case 159:
  case 142:
  case 157:
  case 139:
  case 146:
  case 153:
  case 145:
  case 152:
  case 132:
   read_int32(v->content.args.left, base, pos);
   read_int32(v->content.args.right, base, pos);
   break;
  case 144:
   read_int32(v->content.like_regex.flags, base, pos);
   read_int32(v->content.like_regex.expr, base, pos);
   read_int32(v->content.like_regex.patternlen, base, pos);
   v->content.like_regex.pattern = base + pos;
   break;
  case 140:
  case 156:
  case 150:
  case 135:
  case 143:
  case 155:
  case 160:
   read_int32(v->content.arg, base, pos);
   break;
  case 151:
   read_int32(v->content.array.nelems, base, pos);
   read_int32_n(v->content.array.elems, base, pos,
       v->content.array.nelems * 2);
   break;
  case 166:
   read_int32(v->content.anybounds.first, base, pos);
   read_int32(v->content.anybounds.last, base, pos);
   break;
  default:
   elog(ERROR, "unrecognized jsonpath item type: %d", v->type);
 }
}
