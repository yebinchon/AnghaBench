
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct protocol {int classid; int subclassid; int protocolid; struct protocol* next; int name; } ;


 unsigned int hashnum (int) ;
 struct protocol* my_malloc (scalar_t__) ;
 struct protocol** protocols ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int new_protocol(const char *name, u_int8_t classid, u_int8_t subclassid,
   u_int8_t protocolid)
{
 struct protocol *p;
 unsigned int h = hashnum((classid << 16) | (subclassid << 8)
     | protocolid);

 p = protocols[h];
 for (; p; p = p->next)
  if (p->classid == classid && p->subclassid == subclassid
      && p->protocolid == protocolid)
   return -1;
 p = my_malloc(sizeof(struct protocol) + strlen(name));
 if (!p)
  return -1;
 strcpy(p->name, name);
 p->classid = classid;
 p->subclassid = subclassid;
 p->protocolid = protocolid;
 p->next = protocols[h];
 protocols[h] = p;
 return 0;
}
