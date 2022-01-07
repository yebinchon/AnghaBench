
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct product {int vendorid; int productid; struct product* next; int name; } ;


 unsigned int hashnum (int) ;
 struct product* my_malloc (scalar_t__) ;
 struct product** products ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int new_product(const char *name, u_int16_t vendorid,
         u_int16_t productid)
{
 struct product *p;
 unsigned int h = hashnum((vendorid << 16) | productid);

 p = products[h];
 for (; p; p = p->next)
  if (p->vendorid == vendorid && p->productid == productid)
   return -1;
 p = my_malloc(sizeof(struct product) + strlen(name));
 if (!p)
  return -1;
 strcpy(p->name, name);
 p->vendorid = vendorid;
 p->productid = productid;
 p->next = products[h];
 products[h] = p;
 return 0;
}
