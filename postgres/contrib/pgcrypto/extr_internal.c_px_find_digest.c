
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_digest {int (* init ) (int *) ;scalar_t__ name; } ;
typedef int PX_MD ;


 int PXE_NO_HASH ;
 struct int_digest* int_digest_list ;
 scalar_t__ pg_strcasecmp (scalar_t__,char const*) ;
 int * px_alloc (int) ;
 int stub1 (int *) ;

int
px_find_digest(const char *name, PX_MD **res)
{
 const struct int_digest *p;
 PX_MD *h;

 for (p = int_digest_list; p->name; p++)
  if (pg_strcasecmp(p->name, name) == 0)
  {
   h = px_alloc(sizeof(*h));
   p->init(h);

   *res = h;

   return 0;
  }
 return PXE_NO_HASH;
}
