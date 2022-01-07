
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct TYPE_4__ {int* s6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {TYPE_2__ sin6_addr; TYPE_1__ sin_addr; } ;
typedef int mask6 ;
typedef int mask4 ;




 int memcpy (struct sockaddr_storage*,struct sockaddr_in6*,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int pg_hton32 (long) ;
 long strtol (char*,char**,int) ;

int
pg_sockaddr_cidr_mask(struct sockaddr_storage *mask, char *numbits, int family)
{
 long bits;
 char *endptr;

 if (numbits == ((void*)0))
 {
  bits = (family == 129) ? 32 : 128;
 }
 else
 {
  bits = strtol(numbits, &endptr, 10);
  if (*numbits == '\0' || *endptr != '\0')
   return -1;
 }

 switch (family)
 {
  case 129:
   {
    struct sockaddr_in mask4;
    long maskl;

    if (bits < 0 || bits > 32)
     return -1;
    memset(&mask4, 0, sizeof(mask4));

    if (bits > 0)
     maskl = (0xffffffffUL << (32 - (int) bits))
      & 0xffffffffUL;
    else
     maskl = 0;
    mask4.sin_addr.s_addr = pg_hton32(maskl);
    memcpy(mask, &mask4, sizeof(mask4));
    break;
   }
  default:
   return -1;
 }

 mask->ss_family = family;
 return 0;
}
