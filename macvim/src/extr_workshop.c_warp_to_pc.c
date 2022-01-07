
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int INSERT ;
 int State ;
 int add_to_input_buf (int *,int) ;
 scalar_t__ isShowing (int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
warp_to_pc(
 int lnum)
{
    char lbuf[256];

    if (lnum > 0)
    {
 if (State & INSERT)
     add_to_input_buf((char_u *) "\033", 1);
 if (isShowing(lnum))
     sprintf(lbuf, "%dG", lnum);
 else
     sprintf(lbuf, "%dz.", lnum);
 add_to_input_buf((char_u *) lbuf, strlen(lbuf));
    }
}
