
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;


 int curwin ;
 int window_new (int ) ;

__attribute__((used)) static VALUE window_s_current()
{
    return window_new(curwin);
}
