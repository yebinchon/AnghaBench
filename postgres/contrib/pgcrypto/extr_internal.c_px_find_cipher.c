
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * (* load ) () ;scalar_t__ name; } ;
typedef int PX_Cipher ;


 int PXE_NO_CIPHER ;
 int int_aliases ;
 TYPE_1__* int_ciphers ;
 char* px_resolve_alias (int ,char const*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 int * stub1 () ;

int
px_find_cipher(const char *name, PX_Cipher **res)
{
 int i;
 PX_Cipher *c = ((void*)0);

 name = px_resolve_alias(int_aliases, name);

 for (i = 0; int_ciphers[i].name; i++)
  if (strcmp(int_ciphers[i].name, name) == 0)
  {
   c = int_ciphers[i].load();
   break;
  }

 if (c == ((void*)0))
  return PXE_NO_CIPHER;

 *res = c;
 return 0;
}
