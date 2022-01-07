
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int buf_init_chartab (int ,int ) ;
 int curbuf ;

int
init_chartab()
{
    return buf_init_chartab(curbuf, TRUE);
}
