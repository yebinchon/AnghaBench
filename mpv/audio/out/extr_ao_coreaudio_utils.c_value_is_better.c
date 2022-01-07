
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool value_is_better(double req, double old, double new)
{
    if (new >= req) {
        return old < req || new <= old;
    } else {
        return old < req && new >= old;
    }
}
