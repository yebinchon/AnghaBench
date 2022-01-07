
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 int strcat (char*,char*) ;

__attribute__((used)) static char *decode_bescr(u64 value)
{
 static char buf[16];

 buf[0] = '\0';

 if (value & (1ull << 63))
  strcat(buf, "GE ");
 if (value & (1ull << 32))
  strcat(buf, "PMAE ");
 if (value & 1)
  strcat(buf, "PMAO ");

 return buf;
}
