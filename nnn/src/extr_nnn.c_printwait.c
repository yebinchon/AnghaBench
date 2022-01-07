
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSGWAIT ;
 int printmsg (char const*) ;

__attribute__((used)) static void printwait(const char *msg, int *presel)
{
 printmsg(msg);
 if (presel)
  *presel = MSGWAIT;
}
