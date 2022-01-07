
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_invalid_segment (int ,int) ;
 scalar_t__ nerrs ;

__attribute__((used)) static int finish_exec_test(void)
{




 check_invalid_segment(0, 1);

 return nerrs ? 1 : 0;
}
