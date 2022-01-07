
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRCPY (int ,int ) ;
 int display_showcmd () ;
 int old_showcmd_buf ;
 int p_sc ;
 int showcmd_buf ;

void
pop_showcmd()
{
    if (!p_sc)
 return;

    STRCPY(showcmd_buf, old_showcmd_buf);

    display_showcmd();
}
