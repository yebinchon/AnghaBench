
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RMagic ;


 int file_printf (int *,char*) ;

__attribute__((used)) static int print_sep(RMagic *ms, int firstline) {
 return firstline? 0: file_printf (ms, "\n- ");
}
