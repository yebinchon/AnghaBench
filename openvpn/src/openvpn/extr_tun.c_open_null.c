
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int actual_name; } ;


 int string_alloc (char*,int *) ;

__attribute__((used)) static void
open_null(struct tuntap *tt)
{
    tt->actual_name = string_alloc("null", ((void*)0));
}
