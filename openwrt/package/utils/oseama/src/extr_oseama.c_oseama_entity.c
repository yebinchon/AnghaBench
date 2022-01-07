
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seama_entity_header {int dummy; } ;
typedef size_t ssize_t ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fseek (int *,size_t,int ) ;
 size_t fwrite (char*,int,int ,int *) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 size_t oseama_entity_align (int *,size_t,int) ;
 size_t oseama_entity_append_file (int *,char*) ;
 size_t oseama_entity_append_zeros (int *,size_t) ;
 int oseama_entity_write_hdr (int *,size_t,size_t) ;
 char* seama_path ;
 int stderr ;
 int strlen (char*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int oseama_entity(int argc, char **argv) {
 FILE *seama;
 ssize_t sbytes;
 size_t curr_offset = sizeof(struct seama_entity_header);
 size_t metasize = 0, imagesize = 0;
 int c;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No Seama file passed\n");
  err = -EINVAL;
  goto out;
 }
 seama_path = argv[2];

 seama = fopen(seama_path, "w+");
 if (!seama) {
  fprintf(stderr, "Couldn't open %s\n", seama_path);
  err = -EACCES;
  goto out;
 }
 fseek(seama, curr_offset, SEEK_SET);

 optind = 3;
 while ((c = getopt(argc, argv, "m:f:b:")) != -1) {
  switch (c) {
  case 'm':
   sbytes = fwrite(optarg, 1, strlen(optarg) + 1, seama);
   if (sbytes < 0) {
    fprintf(stderr, "Failed to write meta %s\n", optarg);
   } else {
    curr_offset += sbytes;
    metasize += sbytes;
   }

   sbytes = oseama_entity_align(seama, curr_offset, 4);
   if (sbytes < 0) {
    fprintf(stderr, "Failed to append zeros\n");
   } else {
    curr_offset += sbytes;
    metasize += sbytes;
   }

   break;
  case 'f':
  case 'b':
   break;
  }
 }

 optind = 3;
 while ((c = getopt(argc, argv, "m:f:b:")) != -1) {
  switch (c) {
  case 'm':
   break;
  case 'f':
   sbytes = oseama_entity_append_file(seama, optarg);
   if (sbytes < 0) {
    fprintf(stderr, "Failed to append file %s\n", optarg);
   } else {
    curr_offset += sbytes;
    imagesize += sbytes;
   }
   break;
  case 'b':
   sbytes = strtol(optarg, ((void*)0), 0) - curr_offset;
   if (sbytes < 0) {
    fprintf(stderr, "Current Seama entity length is 0x%zx, can't pad it with zeros to 0x%lx\n", curr_offset, strtol(optarg, ((void*)0), 0));
   } else {
    sbytes = oseama_entity_append_zeros(seama, sbytes);
    if (sbytes < 0) {
     fprintf(stderr, "Failed to append zeros\n");
    } else {
     curr_offset += sbytes;
     imagesize += sbytes;
    }
   }
   break;
  }
  if (err)
   break;
 }

 oseama_entity_write_hdr(seama, metasize, imagesize);

 fclose(seama);
out:
 return err;
}
