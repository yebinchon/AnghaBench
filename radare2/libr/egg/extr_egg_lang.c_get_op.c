
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_op (char) ;
 int is_var (char*) ;

__attribute__((used)) static inline int get_op(char **pos){
 while (**pos && !(is_op (**pos) && !is_var (*pos))) {
  (*pos)++;
 }
 return (**pos)? ((is_op (**pos)) + 1): 0;
}
