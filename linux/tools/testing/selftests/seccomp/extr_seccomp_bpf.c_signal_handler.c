
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handled ;
 int perror (char*) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void signal_handler(int signal)
{
 if (write(handled, "c", 1) != 1)
  perror("write from signal");
}
