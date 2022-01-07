
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,short) ;

__attribute__((used)) static void sqlnotice(const char *notice, short trans)
{
 if (!notice)
  notice = "-empty-";
 printf("in sqlnotice (%s, %d)\n", notice, trans);
}
