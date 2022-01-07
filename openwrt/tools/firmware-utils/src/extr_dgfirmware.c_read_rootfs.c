
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ROOTFS_SIZE ;
 int ROOTFS_START ;
 int SEEK_END ;
 char* app_name ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int perror (char*) ;
 int rewind (int *) ;
 int stderr ;

unsigned char* read_rootfs(unsigned char* img, const char *fname)
{
  FILE *fp;
  int size;
  int i;

  for (i=ROOTFS_START; i<ROOTFS_START+ROOTFS_SIZE; i++)
    img[i] = 0xff;

  fp = fopen(fname, "rb");
  if (fp == ((void*)0)) {
    perror(app_name);
    exit(-1);
  }

  fseek(fp, 0, SEEK_END);
  size = ftell(fp);

  if (size > ROOTFS_SIZE) {
    fprintf(stderr, "%s: rootfs image file is too big\n", app_name);
    fclose(fp);
    exit(-1);
  }

  rewind(fp);

  if (fread(img+ROOTFS_START, 1, size, fp) != size) {
    fprintf(stderr, "%s: can't read rootfs image file\n", app_name);
    fclose(fp);
    exit(-1);
  }

  fclose(fp);
  return img;
}
