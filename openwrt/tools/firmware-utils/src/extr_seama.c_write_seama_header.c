
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {void* size; int metasize; scalar_t__ reserved; void* magic; } ;
typedef TYPE_1__ seamahdr_t ;
typedef int FILE ;


 size_t SEAMA_MAGIC ;
 size_t fwrite (TYPE_1__*,int,int,int *) ;
 void* htonl (size_t) ;
 int htons (int) ;
 scalar_t__ strlen (char*) ;
 int verbose (char*,int) ;

__attribute__((used)) static size_t write_seama_header(FILE * fh, char * meta[], size_t msize, size_t size)
{
 seamahdr_t shdr;
 size_t i;
 uint16_t metasize = 0;


 for (i=0; i<msize; i++) metasize += (strlen(meta[i]) + 1);

 metasize = ((metasize+3)/4)*4;
 verbose("SEAMA META : %d bytes\n", metasize);


 shdr.magic = htonl(SEAMA_MAGIC);
 shdr.reserved = 0;
 shdr.metasize = htons(metasize);
 shdr.size = htonl(size);


 return fwrite(&shdr, sizeof(seamahdr_t), 1, fh);
}
