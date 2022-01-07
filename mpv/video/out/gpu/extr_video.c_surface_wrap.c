
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SURFACES_MAX ;

__attribute__((used)) static inline int surface_wrap(int id)
{
    id = id % SURFACES_MAX;
    return id < 0 ? id + SURFACES_MAX : id;
}
