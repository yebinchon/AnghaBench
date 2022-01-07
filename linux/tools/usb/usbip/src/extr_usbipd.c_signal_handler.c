
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,int ) ;
 int strsignal (int) ;

__attribute__((used)) static void signal_handler(int i)
{
 dbg("received '%s' signal", strsignal(i));
}
