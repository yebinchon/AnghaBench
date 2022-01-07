
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_fullwidth (int) ;

__attribute__((used)) static int
filter_count_width(int c, void* data)
{
 (*(size_t *)data) += (is_fullwidth(c) ? 2: 1);
 return c;
}
