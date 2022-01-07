
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int strcat (char*,char*) ;

__attribute__((used)) static char *decode_mmcr0(u32 value)
{
 static char buf[16];

 buf[0] = '\0';

 if (value & (1 << 31))
  strcat(buf, "FC ");
 if (value & (1 << 26))
  strcat(buf, "PMAE ");
 if (value & (1 << 7))
  strcat(buf, "PMAO ");

 return buf;
}
