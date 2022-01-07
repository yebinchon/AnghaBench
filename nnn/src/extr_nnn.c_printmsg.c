
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addch (char) ;
 int addstr (char const*) ;
 int tolastln () ;

__attribute__((used)) static inline void printmsg(const char *msg)
{
 tolastln();
 addstr(msg);
 addch('\n');
}
