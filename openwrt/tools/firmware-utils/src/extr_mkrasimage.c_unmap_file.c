
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int name; int size; int data; } ;


 int ERR (char*,int ) ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int munmap (int ,int ) ;

void unmap_file(struct file_info *finfo)
{
    if(munmap(finfo->data, finfo->size) == -1) {
        ERR("Error unmapping file %s.", finfo->name);
        exit(EXIT_FAILURE);
    }
}
