
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** entry_error_messages ;
 int printf (char*,char*,unsigned long,unsigned long) ;

void show_invalid_entry_message(int type, unsigned long esr, unsigned long address)
{
 printf("%s, ESR: %x, address: %x\r\n", entry_error_messages[type], esr, address);
}
