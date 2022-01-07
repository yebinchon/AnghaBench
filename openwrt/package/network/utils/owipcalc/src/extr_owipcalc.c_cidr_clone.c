
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {int dummy; } ;


 int cidr_push (struct cidr*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 struct cidr* malloc (int) ;
 int memcpy (struct cidr*,struct cidr*,int) ;
 int stderr ;

__attribute__((used)) static struct cidr * cidr_clone(struct cidr *a)
{
 struct cidr *b = malloc(sizeof(*b));

 if (!b)
 {
  fprintf(stderr, "out of memory\n");
  exit(255);
 }

 memcpy(b, a, sizeof(*b));
 cidr_push(b);

 return b;
}
