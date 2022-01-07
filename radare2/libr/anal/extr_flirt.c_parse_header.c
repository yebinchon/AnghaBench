
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char version; unsigned char arch; unsigned char* ctype; int ctypes_crc16; int library_name_len; int crc16; int old_n_functions; int features; int app_types; int os_types; int file_types; int magic; } ;
typedef TYPE_1__ idasig_v5_t ;
typedef int RBuffer ;


 int r_buf_read (int *,unsigned char*,int) ;
 int r_buf_read_at (int *,int ,int ,int) ;

__attribute__((used)) static int parse_header(RBuffer *buf, idasig_v5_t *header) {
 if (r_buf_read_at (buf, 0, header->magic, sizeof(header->magic)) != sizeof(header->magic)) {
  return 0;
 }
 if (r_buf_read (buf, &header->version, sizeof(header->version)) != sizeof(header->version)) {
  return 0;
 }
 if (r_buf_read (buf, &header->arch, sizeof(header->arch)) != sizeof(header->arch)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->file_types, sizeof(header->file_types)) != sizeof(header->file_types)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->os_types, sizeof(header->os_types)) != sizeof(header->os_types)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->app_types, sizeof(header->app_types)) != sizeof(header->app_types)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->features, sizeof(header->features)) != sizeof(header->features)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->old_n_functions, sizeof(header->old_n_functions)) != sizeof(header->old_n_functions)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->crc16, sizeof(header->crc16)) != sizeof(header->crc16)) {
  return 0;
 }
 if (r_buf_read (buf, header->ctype, sizeof(header->ctype)) != sizeof(header->ctype)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->library_name_len, sizeof(header->library_name_len)) != sizeof(header->library_name_len)) {
  return 0;
 }
 if (r_buf_read (buf, (unsigned char *)&header->ctypes_crc16, sizeof(header->ctypes_crc16)) != sizeof(header->ctypes_crc16)) {
  return 0;
 }

 return 1;
}
