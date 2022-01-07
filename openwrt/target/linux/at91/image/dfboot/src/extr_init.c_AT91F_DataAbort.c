
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts (char*) ;

__attribute__((used)) static void AT91F_DataAbort()
{
 puts("IDA");
 while (1);
}
