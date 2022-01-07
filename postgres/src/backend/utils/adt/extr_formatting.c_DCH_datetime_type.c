
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; TYPE_1__* key; } ;
struct TYPE_4__ {int id; int name; } ;
typedef TYPE_2__ FormatNode ;
 int DCH_DATED ;
 int DCH_TIMED ;
 int DCH_ZONED ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ NODE_TYPE_ACTION ;
 scalar_t__ NODE_TYPE_END ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static int
DCH_datetime_type(FormatNode *node, bool *have_error)
{
 FormatNode *n;
 int flags = 0;

 for (n = node; n->type != NODE_TYPE_END; n++)
 {
  if (n->type != NODE_TYPE_ACTION)
   continue;

  switch (n->key->id)
  {
   case 177:
    break;
   case 194:
   case 157:
   case 140:
   case 131:
   case 196:
   case 158:
   case 138:
   case 130:
   case 176:
   case 175:
   case 174:
   case 166:
   case 154:
   case 162:
   case 149:
   case 183:
   case 182:
   case 181:
   case 180:
   case 179:
   case 178:
   case 153:
    flags |= DCH_TIMED;
    break;
   case 128:
   case 152:
   case 159:
    RETURN_ERROR(ereport(ERROR,
          (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
           errmsg("formatting field \"%s\" is only supported in to_char",
            n->key->name))));
    flags |= DCH_ZONED;
    break;
   case 151:
   case 150:
    flags |= DCH_ZONED;
    break;
   case 195:
   case 192:
   case 141:
   case 137:
   case 197:
   case 193:
   case 139:
   case 136:
   case 163:
   case 160:
   case 132:
   case 164:
   case 161:
   case 133:
   case 165:
   case 189:
   case 185:
   case 135:
   case 186:
   case 184:
   case 134:
   case 187:
   case 171:
   case 188:
   case 190:
   case 172:
   case 147:
   case 156:
   case 191:
   case 142:
   case 143:
   case 168:
   case 144:
   case 169:
   case 145:
   case 170:
   case 146:
   case 173:
   case 155:
   case 129:
   case 148:
   case 167:
    flags |= DCH_DATED;
    break;
  }
 }

on_error:
 return flags;
}
