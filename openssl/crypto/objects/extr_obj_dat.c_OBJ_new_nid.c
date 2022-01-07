
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_nid ;

int OBJ_new_nid(int num)
{
    int i;

    i = new_nid;
    new_nid += num;
    return i;
}
