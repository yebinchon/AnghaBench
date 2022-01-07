
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct seama_seal_header {int metasize; } ;
typedef int hdr ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int SEEK_CUR ;
 int be16_to_cpu (int ) ;
 scalar_t__ entity_idx ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (struct seama_seal_header*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int optind ;
 int oseama_extract_entity (int *,int *) ;
 int oseama_extract_parse_options (int,char**) ;
 char* out_path ;
 char* seama_path ;
 int stderr ;

__attribute__((used)) static int oseama_extract(int argc, char **argv) {
 FILE *seama;
 FILE *out;
 struct seama_seal_header hdr;
 size_t bytes;
 uint16_t metasize;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No Seama file passed\n");
  err = -EINVAL;
  goto out;
 }
 seama_path = argv[2];

 optind = 3;
 oseama_extract_parse_options(argc, argv);
 if (entity_idx < 0) {
  fprintf(stderr, "No entity specified\n");
  err = -EINVAL;
  goto out;
 } else if (!out_path) {
  fprintf(stderr, "No output file specified\n");
  err = -EINVAL;
  goto out;
 }

 seama = fopen(seama_path, "r");
 if (!seama) {
  fprintf(stderr, "Couldn't open %s\n", seama_path);
  err = -EACCES;
  goto out;
 }

 out = fopen(out_path, "w");
 if (!out) {
  fprintf(stderr, "Couldn't open %s\n", out_path);
  err = -EACCES;
  goto err_close_seama;
 }

 bytes = fread(&hdr, 1, sizeof(hdr), seama);
 if (bytes != sizeof(hdr)) {
  fprintf(stderr, "Couldn't read %s header\n", seama_path);
  err = -EIO;
  goto err_close_out;
 }
 metasize = be16_to_cpu(hdr.metasize);

 fseek(seama, metasize, SEEK_CUR);

 oseama_extract_entity(seama, out);

err_close_out:
 fclose(out);
err_close_seama:
 fclose(seama);
out:
 return err;
}
