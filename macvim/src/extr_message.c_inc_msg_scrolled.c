
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ NUL ;
 scalar_t__ STRLEN (int *) ;
 int VV_SCROLLSTART ;
 scalar_t__ _ (char*) ;
 int * alloc (int) ;
 scalar_t__* get_vim_var_str (int ) ;
 int msg_scrolled ;
 int set_vim_var_string (int ,int *,int) ;
 scalar_t__ sourcing_lnum ;
 int * sourcing_name ;
 int vim_free (int *) ;
 int vim_snprintf (char*,int,scalar_t__,int *,long) ;

__attribute__((used)) static void
inc_msg_scrolled()
{
    ++msg_scrolled;
}
