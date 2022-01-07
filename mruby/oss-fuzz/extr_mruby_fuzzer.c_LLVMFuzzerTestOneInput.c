
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_state ;


 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int *,size_t) ;
 int mrb_close (int *) ;
 int mrb_load_string (int *,char*) ;
 int * mrb_open () ;

int LLVMFuzzerTestOneInput(uint8_t *Data, size_t size) {
    if (size < 1) {
        return 0;
    }
    char *code = malloc(size+1);
    memcpy(code, Data, size);
    code[size] = '\0';
    mrb_state *mrb = mrb_open();
    mrb_load_string(mrb, code);
    mrb_close(mrb);
    free(code);
    return 0;
}
