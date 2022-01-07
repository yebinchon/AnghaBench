
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct client_lease {TYPE_1__* options; } ;
struct TYPE_2__ {int len; int data; } ;
 int ipv4addrs (char*) ;
 char* option_as_string (int,int ,int ) ;
 char* pretty_print_option (int,int ,int ,int ,int ) ;
 int res_hnok (char*) ;
 int unknown_ok ;
 int warning (char*,int,...) ;

int
check_option(struct client_lease *l, int option)
{
 char *opbuf;
 char *sbuf;



 opbuf = pretty_print_option(option, l->options[option].data,
     l->options[option].len, 0, 0);

 sbuf = option_as_string(option, l->options[option].data,
     l->options[option].len);

 switch (option) {
 case 136:
 case 131:
 case 156:
 case 140:
 case 170:
 case 161:
 case 187:
 case 160:
 case 164:
 case 142:
 case 135:
 case 188:
 case 150:
 case 148:
 case 154:
 case 155:
 case 167:
 case 173:
  if (!ipv4addrs(opbuf)) {
                        warning("Invalid IP address in option(%d): %s", option, opbuf);
   return (0);
  }
  return (1) ;
 case 166:
 case 171:
 case 151:
  if (!res_hnok(sbuf))
   warning("Bogus Host Name option %d: %s (%s)", option,
       sbuf, opbuf);
  return (1);
 case 147:
 case 132:
 case 189:
 case 157:
 case 141:
 case 168:
 case 162:
 case 149:
 case 143:
 case 158:
 case 186:
 case 146:
 case 145:
 case 163:
 case 191:
 case 144:
 case 159:
 case 139:
 case 138:
 case 137:
 case 130:
 case 190:
 case 165:
 case 185:
 case 133:
 case 134:
 case 129:
 case 153:
 case 152:
 case 128:
 case 174:
 case 182:
 case 178:
 case 179:
 case 177:
 case 180:
 case 181:
 case 175:
 case 176:
 case 184:
 case 183:
 case 172:
 case 169:
  return (1);
 default:
  warning("unknown dhcp option value 0x%x", option);
  return (unknown_ok);
 }
}
