
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * dummynode ;

int luaH_isdummy (Node *n) { return n == dummynode; }
