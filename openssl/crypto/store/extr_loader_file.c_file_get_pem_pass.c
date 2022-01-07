
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_pass_data {int data; int prompt_info; int ui_method; } ;


 char* file_get_pass (int ,char*,int,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int file_get_pem_pass(char *buf, int num, int w, void *data)
{
    struct pem_pass_data *pass_data = data;
    char *pass = file_get_pass(pass_data->ui_method, buf, num,
                               pass_data->prompt_info, pass_data->data);

    return pass == ((void*)0) ? 0 : strlen(pass);
}
