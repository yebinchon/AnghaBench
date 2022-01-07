
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int size; scalar_t__ data; } ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int KERNEL_HEADER_LEN ;
 int exit (int ) ;
 unsigned int htonl (int ) ;
 char* malloc (int ) ;
 int memcpy (char*,unsigned int*,int) ;
 unsigned int zyxel_chksm (unsigned char const*,int ) ;

char *generate_kernel_header(struct file_info kernel)
{
    unsigned int chksm, size;
    char *kernel_header;
    size_t ptr = 0;

    kernel_header = malloc(KERNEL_HEADER_LEN);
    if (!kernel_header) {
        ERR("Couldn't allocate memory for kernel header!");
        exit(EXIT_FAILURE);
    }

    chksm = zyxel_chksm((const unsigned char *)kernel.data, kernel.size);
    size = htonl(kernel.size);


    memcpy(kernel_header + ptr, &chksm, 4);
    ptr += 4;


    memcpy(kernel_header + ptr, &size, 4);

    return kernel_header;
}
