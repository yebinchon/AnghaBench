
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fp_load_ckpt ;
 int loadvsx (int ,int ) ;

__attribute__((used)) void load_vsx_ckpt(void)
{
 loadvsx(fp_load_ckpt, 0);
}
