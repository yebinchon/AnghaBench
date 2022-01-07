
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int MAX_CHARS ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int json_decref (int *) ;
 int * load_json (char*) ;
 int print_json (int *) ;
 char* read_line (char*,int) ;
 int stderr ;

int main(int argc, char *argv[]) {
    char line[MAX_CHARS];

    if (argc != 1) {
        fprintf(stderr, "Usage: %s\n", argv[0]);
        exit(-1);
    }

    while (read_line(line, MAX_CHARS) != (char *)((void*)0)) {


        json_t *root = load_json(line);

        if (root) {

            print_json(root);
            json_decref(root);
        }
    }

    return 0;
}
