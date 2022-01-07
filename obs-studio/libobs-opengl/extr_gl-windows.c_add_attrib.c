
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;


 int darray_push_back (int,struct darray*,int*) ;

__attribute__((used)) static inline void add_attrib(struct darray *list, int attrib, int val)
{
 darray_push_back(sizeof(int), list, &attrib);
 darray_push_back(sizeof(int), list, &val);
}
