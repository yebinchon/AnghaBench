
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int ofs; } ;
typedef TYPE_1__ zend_elf_sectheader ;
typedef scalar_t__ ssize_t ;


 int SEEK_SET ;
 int efree (void*) ;
 void* emalloc (scalar_t__) ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ read (int,void*,scalar_t__) ;

__attribute__((used)) static void* zend_elf_read_sect(int fd, zend_elf_sectheader *sect)
{
 void *s = emalloc(sect->size);

 if (lseek(fd, sect->ofs, SEEK_SET) < 0) {
  efree(s);
  return ((void*)0);
 }
 if (read(fd, s, sect->size) != (ssize_t)sect->size) {
  efree(s);
  return ((void*)0);
 }

 return s;
}
