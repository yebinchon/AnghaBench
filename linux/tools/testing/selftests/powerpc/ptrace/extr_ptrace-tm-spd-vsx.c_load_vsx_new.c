
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fp_load_new ;
 int loadvsx (int ,int ) ;

__attribute__((used)) void load_vsx_new(void)
{
 loadvsx(fp_load_new, 0);
}
