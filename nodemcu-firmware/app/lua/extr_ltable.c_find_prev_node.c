
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * gnext (int *) ;

__attribute__((used)) static Node *find_prev_node(Node *mp, Node *next) {
  Node *prev = mp;
  while (prev != ((void*)0) && gnext(prev) != next) prev = gnext(prev);
  return prev;
}
