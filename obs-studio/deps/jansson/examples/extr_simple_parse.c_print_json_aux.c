
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
 int fprintf (int ,char*,int) ;
 int json_typeof (int *) ;
 int print_json_array (int *,int) ;
 int print_json_false (int *,int) ;
 int print_json_integer (int *,int) ;
 int print_json_null (int *,int) ;
 int print_json_object (int *,int) ;
 int print_json_real (int *,int) ;
 int print_json_string (int *,int) ;
 int print_json_true (int *,int) ;
 int stderr ;

void print_json_aux(json_t *element, int indent) {
    switch (json_typeof(element)) {
    case 131:
        print_json_object(element, indent);
        break;
    case 135:
        print_json_array(element, indent);
        break;
    case 129:
        print_json_string(element, indent);
        break;
    case 133:
        print_json_integer(element, indent);
        break;
    case 130:
        print_json_real(element, indent);
        break;
    case 128:
        print_json_true(element, indent);
        break;
    case 134:
        print_json_false(element, indent);
        break;
    case 132:
        print_json_null(element, indent);
        break;
    default:
        fprintf(stderr, "unrecognized JSON type %d\n", json_typeof(element));
    }
}
