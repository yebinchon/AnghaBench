
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;



__attribute__((used)) static bool same_st(struct stat *st1, struct stat *st2)
{
    return st1->st_dev == st2->st_dev && st1->st_ino == st2->st_ino;
}
