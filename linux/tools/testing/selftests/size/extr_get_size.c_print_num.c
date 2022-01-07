
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int num_buf ;


 int num_to_str (unsigned long,char*,int) ;
 int print (int ) ;

__attribute__((used)) static int print_num(unsigned long num)
{
 char num_buf[30];

 return print(num_to_str(num, num_buf, sizeof(num_buf)));
}
