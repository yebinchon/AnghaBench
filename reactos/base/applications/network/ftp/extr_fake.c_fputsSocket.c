
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send (int,char const*,int ,int ) ;
 int strlen (char const*) ;

const char *fputsSocket(const char *format, int s)
{
   send(s, format, strlen(format), 0);

   return ((void*)0);
}
