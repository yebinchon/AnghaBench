
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int size; scalar_t__ data; } ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int ROOTFS_HEADER_LEN ;
 size_t VERSION_STRING_LEN ;
 int exit (int ) ;
 unsigned int htonl (int ) ;
 char* malloc (int ) ;
 int memcpy (char*,...) ;
 int memset (char*,int,int ) ;
 size_t strlen (char*) ;
 unsigned int zyxel_chksm (unsigned char const*,int ) ;

char *generate_rootfs_header(struct file_info filesystem, char *version)
{
    size_t version_string_length;
    unsigned int chksm, size;
    char *rootfs_header;
    size_t ptr = 0;

    rootfs_header = malloc(ROOTFS_HEADER_LEN);
    if (!rootfs_header) {
        ERR("Couldn't allocate memory for rootfs header!");
        exit(EXIT_FAILURE);
    }


    memset(rootfs_header, 0xff, ROOTFS_HEADER_LEN);

    chksm = zyxel_chksm((const unsigned char *)filesystem.data, filesystem.size);
    size = htonl(filesystem.size);


    memcpy(rootfs_header + ptr, &chksm, 4);
    ptr += 4;


    memcpy(rootfs_header + ptr, &size, 4);
    ptr += 4;


    version_string_length = strlen(version) <= VERSION_STRING_LEN ? strlen(version) : VERSION_STRING_LEN;
    memcpy(rootfs_header + ptr, version, version_string_length);
    ptr += version_string_length;

    rootfs_header[ptr] = 0x0;

    return rootfs_header;
}
