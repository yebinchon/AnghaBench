
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MAXCNAME ;
 int get16 (int *) ;
 int parse_name (int *,int *,char*,int) ;

uint8_t * dns_answer(uint8_t * msg, uint8_t * cp, uint8_t * ip_from_dns)
{
 int len, type;
 char name[MAXCNAME];

 len = parse_name(msg, cp, name, MAXCNAME);

 if (len == -1) return 0;

 cp += len;
 type = get16(cp);
 cp += 2;
 cp += 2;
 cp += 4;
 cp += 2;


 switch (type)
 {
 case 138:

  ip_from_dns[0] = *cp++;
  ip_from_dns[1] = *cp++;
  ip_from_dns[2] = *cp++;
  ip_from_dns[3] = *cp++;
  break;
 case 137:
 case 135:
 case 134:
 case 133:
 case 131:
 case 130:


  len = parse_name(msg, cp, name, MAXCNAME);
  if (len == -1) return 0;

  cp += len;
  break;
 case 136:
  len = *cp++;
  cp += len;

  len = *cp++;
  cp += len;
  break;
 case 132:
  cp += 2;

  len = parse_name(msg, cp, name, MAXCNAME);
  if (len == -1) return 0;

  cp += len;
  break;
 case 129:

  len = parse_name(msg, cp, name, MAXCNAME);
  if (len == -1) return 0;

  cp += len;


  len = parse_name(msg, cp, name, MAXCNAME);
  if (len == -1) return 0;

  cp += len;

  cp += 4;
  cp += 4;
  cp += 4;
  cp += 4;
  cp += 4;
  break;
 case 128:

  break;
 default:

  break;
 }

 return cp;
}
