
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int PF0 ;
 int PF1 ;
 int PF4 ;
 int PF5 ;
 int PF6 ;
 int PF7 ;
 int PORTF ;
 int left_unselect_rows () ;

__attribute__((used)) static void unselect_rows(void)
{

  DDRF &= ~(1<<PF7 | 1<< PF6 | 1<<PF5 | 1<<PF4 | 1<<PF1 | 1<<PF0);
  PORTF &= ~(1<<PF7 | 1<< PF6 | 1<<PF5 | 1<<PF4 | 1<<PF1 | 1<<PF0);

  left_unselect_rows();
}
