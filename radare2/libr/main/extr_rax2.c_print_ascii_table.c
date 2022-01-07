
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* ret_ascii_table () ;

__attribute__((used)) static void print_ascii_table() {
 printf("%s", ret_ascii_table());
}
