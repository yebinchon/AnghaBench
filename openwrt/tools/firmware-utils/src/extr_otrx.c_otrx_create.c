
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trx_header {size_t* offset; size_t length; } ;
typedef scalar_t__ ssize_t ;
typedef int hdr ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int ENOSPC ;
 int SEEK_SET ;
 size_t TRX_MAX_PARTS ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fseek (int *,size_t,int ) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 scalar_t__ otrx_create_align (int *,size_t,int) ;
 scalar_t__ otrx_create_append_file (int *,char*) ;
 scalar_t__ otrx_create_append_zeros (int *,scalar_t__) ;
 int otrx_create_write_hdr (int *,struct trx_header*) ;
 int stderr ;
 int strtol (char*,int *,int ) ;
 char* trx_path ;

__attribute__((used)) static int otrx_create(int argc, char **argv) {
 FILE *trx;
 struct trx_header hdr = {};
 ssize_t sbytes;
 size_t curr_idx = 0;
 size_t curr_offset = sizeof(hdr);
 int c;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No TRX file passed\n");
  err = -EINVAL;
  goto out;
 }
 trx_path = argv[2];

 trx = fopen(trx_path, "w+");
 if (!trx) {
  fprintf(stderr, "Couldn't open %s\n", trx_path);
  err = -EACCES;
  goto out;
 }
 fseek(trx, curr_offset, SEEK_SET);

 optind = 3;
 while ((c = getopt(argc, argv, "f:A:a:b:")) != -1) {
  switch (c) {
  case 'f':
   if (curr_idx >= TRX_MAX_PARTS) {
    err = -ENOSPC;
    fprintf(stderr, "Reached TRX partitions limit, no place for %s\n", optarg);
    goto err_close;
   }

   sbytes = otrx_create_append_file(trx, optarg);
   if (sbytes < 0) {
    fprintf(stderr, "Failed to append file %s\n", optarg);
   } else {
    hdr.offset[curr_idx++] = curr_offset;
    curr_offset += sbytes;
   }

   sbytes = otrx_create_align(trx, curr_offset, 4);
   if (sbytes < 0)
    fprintf(stderr, "Failed to append zeros\n");
   else
    curr_offset += sbytes;

   break;
  case 'A':
   sbytes = otrx_create_append_file(trx, optarg);
   if (sbytes < 0) {
    fprintf(stderr, "Failed to append file %s\n", optarg);
   } else {
    curr_offset += sbytes;
   }

   sbytes = otrx_create_align(trx, curr_offset, 4);
   if (sbytes < 0)
    fprintf(stderr, "Failed to append zeros\n");
   else
    curr_offset += sbytes;
   break;
  case 'a':
   sbytes = otrx_create_align(trx, curr_offset, strtol(optarg, ((void*)0), 0));
   if (sbytes < 0)
    fprintf(stderr, "Failed to append zeros\n");
   else
    curr_offset += sbytes;
   break;
  case 'b':
   sbytes = strtol(optarg, ((void*)0), 0) - curr_offset;
   if (sbytes < 0) {
    fprintf(stderr, "Current TRX length is 0x%zx, can't pad it with zeros to 0x%lx\n", curr_offset, strtol(optarg, ((void*)0), 0));
   } else {
    sbytes = otrx_create_append_zeros(trx, sbytes);
    if (sbytes < 0)
     fprintf(stderr, "Failed to append zeros\n");
    else
     curr_offset += sbytes;
   }
   break;
  }
  if (err)
   break;
 }

 sbytes = otrx_create_align(trx, curr_offset, 0x1000);
 if (sbytes < 0)
  fprintf(stderr, "Failed to append zeros\n");
 else
  curr_offset += sbytes;

 hdr.length = curr_offset;
 otrx_create_write_hdr(trx, &hdr);
err_close:
 fclose(trx);
out:
 return err;
}
