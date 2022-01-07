
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_4__ {struct in_addr v4; } ;
struct TYPE_3__ {char* v4; } ;
struct cidr {int prefix; TYPE_2__ addr; TYPE_1__ buf; int family; } ;


 int AF_INET ;
 int free (struct cidr*) ;
 int inet_pton (int ,char*,struct in_addr*) ;
 struct cidr* malloc (int) ;
 int memset (struct in_addr*,int ,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static struct cidr * cidr_parse4(const char *s)
{
 char *p = ((void*)0), *r;
 struct in_addr mask;
 struct cidr *addr = malloc(sizeof(struct cidr));

 if (!addr || (strlen(s) >= sizeof(addr->buf.v4)))
  goto err;

 snprintf(addr->buf.v4, sizeof(addr->buf.v4), "%s", s);

 addr->family = AF_INET;

 if ((p = strchr(addr->buf.v4, '/')) != ((void*)0))
 {
  *p++ = 0;

  if (strchr(p, '.') != ((void*)0))
  {
   if (inet_pton(AF_INET, p, &mask) != 1)
    goto err;

   for (addr->prefix = 0; mask.s_addr; mask.s_addr >>= 1)
    addr->prefix += (mask.s_addr & 1);
  }
  else
  {
   addr->prefix = strtoul(p, &r, 10);

   if ((p == r) || (*r != 0) || (addr->prefix > 32))
    goto err;
  }
 }
 else
 {
  addr->prefix = 32;
 }

 if (p == addr->buf.v4+1)
  memset(&addr->addr.v4, 0, sizeof(addr->addr.v4));
 else if (inet_pton(AF_INET, addr->buf.v4, &addr->addr.v4) != 1)
  goto err;

 return addr;

err:
 if (addr)
  free(addr);

 return ((void*)0);
}
