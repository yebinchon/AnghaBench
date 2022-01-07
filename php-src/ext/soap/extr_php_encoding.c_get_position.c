
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_position_ex (int,char const*,int**) ;
 int* safe_emalloc (int,int,int ) ;

__attribute__((used)) static int* get_position(int dimension, const char* str)
{
 int *pos;

 pos = safe_emalloc(sizeof(int), dimension, 0);
 get_position_ex(dimension, str, &pos);
 return pos;
}
