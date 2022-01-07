
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int CreateCommandTag (int *) ;
 int IsInParallelMode () ;
 int PreventCommandIfParallelMode (int ) ;
 int PreventCommandIfReadOnly (int ) ;
 int XactReadOnly ;
 int nodeTag (int *) ;

__attribute__((used)) static void
check_xact_readonly(Node *parsetree)
{

 if (!XactReadOnly && !IsInParallelMode())
  return;
 switch (nodeTag(parsetree))
 {
  case 200:
  case 201:
  case 198:
  case 191:
  case 183:
  case 184:
  case 190:
  case 189:
  case 186:
  case 187:
  case 182:
  case 178:
  case 176:
  case 132:
  case 174:
  case 146:
  case 172:
  case 168:
  case 196:
  case 171:
  case 147:
  case 170:
  case 163:
  case 157:
  case 135:
  case 160:
  case 162:
  case 161:
  case 188:
  case 131:
  case 156:
  case 155:
  case 154:
  case 152:
  case 133:
  case 151:
  case 150:
  case 149:
  case 173:
  case 169:
  case 158:
  case 197:
  case 128:
  case 143:
  case 139:
  case 141:
  case 144:
  case 137:
  case 138:
  case 199:
  case 129:
  case 145:
  case 134:
  case 179:
  case 180:
  case 167:
  case 194:
  case 195:
  case 166:
  case 193:
  case 165:
  case 192:
  case 148:
  case 175:
  case 140:
  case 177:
  case 164:
  case 136:
  case 130:
  case 159:
  case 185:
  case 153:
  case 181:
  case 142:
   PreventCommandIfReadOnly(CreateCommandTag(parsetree));
   PreventCommandIfParallelMode(CreateCommandTag(parsetree));
   break;
  default:

   break;
 }
}
