
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edimax_header {void* header_csum; void* data_csum; int type; void* data_size; void* end_addr; void* start_addr; int force; int mtd_name; int fw_version; int magic; int model; } ;


 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* checksum (unsigned char*,int) ;
 int data_size ;
 int end_addr ;
 int force ;
 int free (char*) ;
 int fw_version ;
 void* htonl (int) ;
 int ifname ;
 int image_type ;
 int magic ;
 char* malloc (int) ;
 int memset (struct edimax_header*,int ,int) ;
 int model ;
 int mtd_name ;
 int read_to_buf (int ,char*,int) ;
 int start_addr ;
 int strncpy (int ,int ,int) ;
 int write_fw (char*,int) ;

__attribute__((used)) static int build_fw(void)
{
 int buflen;
 char *buf;
 char *data;
 struct edimax_header *hdr;
 int ret = EXIT_FAILURE;

 buflen = sizeof(struct edimax_header) + data_size;

 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 data = buf + sizeof(struct edimax_header);


 ret = read_to_buf(ifname, data, data_size);
 if (ret)
  goto out_free_buf;


 hdr = (struct edimax_header *)buf;
 memset(hdr, 0, sizeof(struct edimax_header));

 strncpy(hdr->model, model, sizeof(hdr->model));
 strncpy(hdr->magic, magic, sizeof(hdr->magic));
 strncpy(hdr->fw_version, fw_version, sizeof(hdr->fw_version));
 strncpy(hdr->mtd_name, mtd_name, sizeof(hdr->mtd_name));

 hdr->force = force;
 hdr->start_addr = htonl(start_addr);
 hdr->end_addr = htonl(end_addr);
 hdr->data_size = htonl(data_size);
 hdr->type = image_type;

 hdr->data_csum = checksum((unsigned char *)data, data_size);
 hdr->header_csum = checksum((unsigned char *)hdr,
        sizeof(struct edimax_header));

 ret = write_fw(buf, buflen);
 if (ret)
  goto out_free_buf;

 ret = EXIT_SUCCESS;

out_free_buf:
 free(buf);
out:
 return ret;
}
