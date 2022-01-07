
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int print_json_aux (int *,int ) ;

void print_json(json_t *root) {
    print_json_aux(root, 0);
}
