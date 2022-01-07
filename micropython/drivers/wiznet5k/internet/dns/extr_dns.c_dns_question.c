
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MAXCNAME ;
 int parse_name (int *,int *,char*,int) ;

uint8_t * dns_question(uint8_t * msg, uint8_t * cp)
{
 int len;
 char name[MAXCNAME];

 len = parse_name(msg, cp, name, MAXCNAME);


 if (len == -1) return 0;

 cp += len;
 cp += 2;
 cp += 2;

 return cp;
}
