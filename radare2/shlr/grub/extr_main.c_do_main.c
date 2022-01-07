
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_fs {scalar_t__ (* open ) (struct grub_file*,char*) ;scalar_t__ (* read ) (struct grub_file*,char*,int ) ;scalar_t__ (* dir ) (int ,char*,int ,int ) ;int (* close ) (struct grub_file*) ;} ;
struct grub_file {int device; int size; } ;
typedef scalar_t__ grub_err_t ;


 int IMGFILE ;
 int dirhook ;
 struct grub_fs grub_ext2_fs ;
 int grub_print_error () ;
 struct grub_file* openimage (struct grub_fs*,int ) ;
 int printf (char*,...) ;
 scalar_t__ stub1 (struct grub_file*,char*) ;
 scalar_t__ stub2 (struct grub_file*,char*,int ) ;
 int stub3 (struct grub_file*) ;
 scalar_t__ stub4 (int ,char*,int ,int ) ;
 int write (int,char*,int ) ;

int do_main() {
 struct grub_file *file;
 struct grub_fs *e2;
 grub_err_t err;

 e2 = &grub_ext2_fs;
 file = openimage (e2, IMGFILE);
 if (file == ((void*)0)) {
  printf ("oops\n");
  return 0;
 }

 err = e2->open (file, "/test");
 if (err == 0) {
  char buf[1024];
  err = e2->read (file, buf, file->size);

  write (1, buf, file->size);
  e2->close (file);


  err = e2->dir (file->device, "/", dirhook, 0);
  if (err != 0)
   grub_print_error ();
 } else {
  grub_print_error ();
  printf ("error is : %d\n", err);
  return 0;
 }
 return 1;
}
