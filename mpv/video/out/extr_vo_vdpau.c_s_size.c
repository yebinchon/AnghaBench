
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPMAX (int,int) ;
 int MPMIN (int,int) ;

__attribute__((used)) static int s_size(int max, int s, int disp)
{
    disp = MPMAX(1, disp);
    return MPMIN(max, MPMAX(s, disp));
}
