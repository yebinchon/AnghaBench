
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_array_get (int *,size_t) ;
 size_t json_array_size (int *) ;
 int json_plural (size_t) ;
 int print_json_aux (int ,int) ;
 int print_json_indent (int) ;
 int printf (char*,size_t,int ) ;

void print_json_array(json_t *element, int indent) {
    size_t i;
    size_t size = json_array_size(element);
    print_json_indent(indent);

    printf("JSON Array of %ld element%s:\n", size, json_plural(size));
    for (i = 0; i < size; i++) {
        print_json_aux(json_array_get(element, i), indent + 2);
    }
}
