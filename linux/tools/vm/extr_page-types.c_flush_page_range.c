
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_page_range (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void flush_page_range(void)
{
 show_page_range(0, 0, 0, 0, 0, 0);
}
