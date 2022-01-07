
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct u_media_header {char* ih_name; int ih_UMedia_LoadDefault; void* ih_hcrc; int ih_UMedia_imageType; void* ih_UMedia_boardID; void* ih_UMedia_magic; void* ih_magic; } ;
struct TYPE_3__ {int file_size; } ;


 int DBG (char*,int ) ;
 int ERR (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ IH_MAGIC ;
 int IH_NMLEN ;
 int UM_HEADER_LEN ;
 scalar_t__ UM_MAGIC ;
 scalar_t__ board_id ;
 scalar_t__ cyg_ether_crc32 (unsigned char*,int) ;
 scalar_t__ factory_defaults ;
 int free (char*) ;
 void* htonl (scalar_t__) ;
 TYPE_1__ if_info ;
 int image_type ;
 char* malloc (int) ;
 scalar_t__ ntohl (void*) ;
 int ofname ;
 int read_to_buf (TYPE_1__*,char*) ;
 int write_fw (char*,int) ;

__attribute__((used)) static int fix_header(void)
{
 int buflen;
 char *buf;
 uint32_t crc, crc_orig;
 struct u_media_header *hdr;
 int ret = EXIT_FAILURE;

 buflen = if_info.file_size;
 if (buflen < sizeof(*hdr)) {
  ERR("invalid input file\n");
  return ret;
 }

 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto out;
 }

 ret = read_to_buf(&if_info, buf);
 if (ret)
  goto out_free_buf;

 hdr = (struct u_media_header *) buf;
 if (ntohl(hdr->ih_magic) != IH_MAGIC) {
  ERR("invalid input file, bad magic\n");
  goto out_free_buf;
 }


 crc_orig = ntohl(hdr->ih_hcrc);
 hdr->ih_hcrc = 0;
 crc = cyg_ether_crc32((unsigned char *)hdr, sizeof(*hdr));
 if (crc != crc_orig) {
  ERR("invalid input file, bad header CRC\n");
  goto out_free_buf;
 }

 hdr->ih_name[IH_NMLEN - UM_HEADER_LEN - 1] = '\0';


 hdr->ih_UMedia_magic = htonl(UM_MAGIC);
 hdr->ih_UMedia_boardID = htonl(board_id);
 hdr->ih_UMedia_imageType = image_type;
 hdr->ih_UMedia_LoadDefault = (factory_defaults) ? 1 : 0;


 crc = cyg_ether_crc32((unsigned char *)hdr, sizeof(*hdr));
 hdr->ih_hcrc = htonl(crc);

 ret = write_fw(buf, buflen);
 if (ret)
  goto out_free_buf;

 DBG("U-Media header fixed in \"%s\"", ofname);

 ret = EXIT_SUCCESS;

out_free_buf:
 free(buf);
out:
 return ret;
}
