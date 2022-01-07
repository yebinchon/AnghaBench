
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_func {char* return_type; char* name; int * end; int * start; int * mapping; int params; } ;


 int da_init (int ) ;

__attribute__((used)) static inline void shader_func_init(struct shader_func *sf, char *return_type,
        char *name)
{
 da_init(sf->params);

 sf->return_type = return_type;
 sf->mapping = ((void*)0);
 sf->name = name;
 sf->start = ((void*)0);
 sf->end = ((void*)0);
}
