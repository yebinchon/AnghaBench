
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
filter_count_output(int c, void *data)
{
 (*(size_t *)data)++;
 return c;
}
