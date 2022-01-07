
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PANEL ;


 int del_panel (int *) ;

__attribute__((used)) static void close_panel(PANEL *p)
{
 if (p) {
  del_panel(p);
  p = ((void*)0);
 }
}
