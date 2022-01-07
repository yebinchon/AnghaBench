
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seama_seal_header {int magic; int imagesize; int metasize; } ;
typedef struct seama_seal_header uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int hdr ;
typedef int buf ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int SEAMA_MAGIC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ entity_idx ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (struct seama_seal_header*,int,int,int *) ;
 int optind ;
 int oseama_info_entities (int *) ;
 int oseama_info_parse_options (int,char**) ;
 int printf (char*,...) ;
 char* seama_path ;
 int stderr ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int oseama_info(int argc, char **argv) {
 FILE *seama;
 struct seama_seal_header hdr;
 size_t bytes;
 uint16_t metasize;
 uint32_t imagesize;
 uint8_t buf[1024];
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No Seama file passed\n");
  err = -EINVAL;
  goto out;
 }
 seama_path = argv[2];

 optind = 3;
 oseama_info_parse_options(argc, argv);

 seama = fopen(seama_path, "r");
 if (!seama) {
  fprintf(stderr, "Couldn't open %s\n", seama_path);
  err = -EACCES;
  goto out;
 }

 bytes = fread(&hdr, 1, sizeof(hdr), seama);
 if (bytes != sizeof(hdr)) {
  fprintf(stderr, "Couldn't read %s header\n", seama_path);
  err = -EIO;
  goto err_close;
 }
 metasize = be16_to_cpu(hdr.metasize);
 imagesize = be32_to_cpu(hdr.imagesize);

 if (be32_to_cpu(hdr.magic) != SEAMA_MAGIC) {
  fprintf(stderr, "Invalid Seama magic: 0x%08x\n", be32_to_cpu(hdr.magic));
  err = -EINVAL;
  goto err_close;
 }

 if (metasize >= sizeof(buf)) {
  fprintf(stderr, "Too small buffer (%zu B) to read all meta info (%d B)\n", sizeof(buf), metasize);
  err = -EINVAL;
  goto err_close;
 }

 if (imagesize) {
  fprintf(stderr, "Invalid Seama image size: 0x%08x (should be 0)\n", imagesize);
  err = -EINVAL;
  goto err_close;
 }

 bytes = fread(buf, 1, metasize, seama);
 if (bytes != metasize) {
  fprintf(stderr, "Couldn't read %d B of meta\n", metasize);
  err = -EIO;
  goto err_close;
 }

 if (entity_idx < 0) {
  char *end, *tmp;

  printf("Meta size:\t%d\n", metasize);
  printf("Image size:\t%d\n", imagesize);

  end = (char *)&buf[metasize - 1];
  *end = '\0';
  for (tmp = (char *)buf; tmp < end && strlen(tmp); tmp += strlen(tmp) + 1) {
   printf("Meta entry:\t%s\n", tmp);
  }
 }

 oseama_info_entities(seama);

err_close:
 fclose(seama);
out:
 return err;
}
