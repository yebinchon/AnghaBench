
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seama_entity_header {int imagesize; int metasize; int magic; } ;
typedef struct seama_entity_header uint8_t ;
typedef int hdr ;
typedef int buf ;
typedef int FILE ;


 int EINVAL ;
 int EIO ;
 int SEAMA_MAGIC ;
 int SEEK_CUR ;
 size_t be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int entity_idx ;
 int fprintf (int ,char*,size_t,...) ;
 size_t fread (struct seama_entity_header*,int,size_t,int *) ;
 int fseek (int *,size_t,int ) ;
 char* ftell (int *) ;
 int printf (char*,...) ;
 int stderr ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int oseama_info_entities(FILE *seama) {
 struct seama_entity_header hdr;
 size_t bytes, metasize, imagesize;
 uint8_t buf[1024];
 char *end, *tmp;
 int i = 0;
 int err = 0;

 while ((bytes = fread(&hdr, 1, sizeof(hdr), seama)) == sizeof(hdr)) {
  if (be32_to_cpu(hdr.magic) != SEAMA_MAGIC) {
   fprintf(stderr, "Invalid Seama magic: 0x%08x\n", be32_to_cpu(hdr.magic));
   err = -EINVAL;
   goto err_out;
  }
  metasize = be16_to_cpu(hdr.metasize);
  imagesize = be32_to_cpu(hdr.imagesize);

  if (entity_idx >= 0 && i != entity_idx) {
   fseek(seama, metasize + imagesize, SEEK_CUR);
   i++;
   continue;
  }

  if (metasize >= sizeof(buf)) {
   fprintf(stderr, "Too small buffer (%zu B) to read all meta info (%zd B)\n", sizeof(buf), metasize);
   err = -EINVAL;
   goto err_out;
  }

  if (entity_idx < 0)
   printf("\n");
  printf("Entity offset:\t%ld\n", ftell(seama) - sizeof(hdr));
  printf("Entity size:\t%zd\n", sizeof(hdr) + metasize + imagesize);
  printf("Meta size:\t%zd\n", metasize);
  printf("Image size:\t%zd\n", imagesize);

  bytes = fread(buf, 1, metasize, seama);
  if (bytes != metasize) {
   fprintf(stderr, "Couldn't read %zd B of meta\n", metasize);
   err = -EIO;
   goto err_out;
  }

  end = (char *)&buf[metasize - 1];
  *end = '\0';
  for (tmp = (char *)buf; tmp < end && strlen(tmp); tmp += strlen(tmp) + 1) {
   printf("Meta entry:\t%s\n", tmp);
  }

  fseek(seama, imagesize, SEEK_CUR);
  i++;
 }

err_out:
 return err;
}
