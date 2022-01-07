
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; int metasize; int size; } ;
typedef TYPE_1__ uint8_t ;
typedef int shdr ;
typedef TYPE_1__ seamahdr_t ;
typedef int FILE ;


 int MAX_SEAMA_META_SIZE ;
 int SEAMA_MAGIC ;
 int fclose (int *) ;
 int feof (int *) ;
 int ferror (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (TYPE_1__*,int,size_t,int *) ;
 int fwrite (TYPE_1__*,int,size_t,int *) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ match_meta (char const*,size_t) ;
 size_t ntohl (int ) ;
 size_t ntohs (int ) ;
 char** o_images ;
 size_t o_isize ;
 scalar_t__ o_msize ;
 int printf (char*,...) ;
 scalar_t__ verify_seama (char*,int ) ;

__attribute__((used)) static void extract_file(const char * output)
{
 FILE * ifh = ((void*)0);
 FILE * ofh = ((void*)0);
 size_t msize, isize, i, m;
 seamahdr_t shdr;
 uint8_t buf[MAX_SEAMA_META_SIZE];
 int done = 0;


 if (o_msize == 0)
 {
  printf("SEAMA: need meta for searching image.\n");
  return;
 }


 for (i = 0; i < o_isize; i++)
 {

  if (verify_seama(o_images[i], 0) < 0)
  {
   printf("SEAMA: '%s' is not a seama file !\n", o_images[i]);
   continue;
  }

  ifh = fopen(o_images[i], "r");
  if (!ifh) continue;

  while (!feof(ifh) && !ferror(ifh))
  {

   fread(&shdr, sizeof(shdr), 1, ifh);
   if (shdr.magic != htonl(SEAMA_MAGIC)) break;

   isize = ntohl(shdr.size);
   msize = ntohs(shdr.metasize);
   if (isize == 0)
   {
    while (msize > 0)
    {
     m = fread(buf, sizeof(char), (msize < MAX_SEAMA_META_SIZE) ? msize : MAX_SEAMA_META_SIZE, ifh);
     if (m <= 0) break;
     msize -= m;
    }
    continue;
   }

   fread(buf, sizeof(char), 16, ifh);
   if (msize > 0)
   {

    fread(buf, sizeof(char), msize, ifh);
    if (match_meta((const char *)buf, msize))
    {
     printf("SEAMA: found image @ '%s', image size: %zu\n", o_images[i], isize);

     ofh = fopen(output, "w");
     if (!ofh) printf("SEAMA: unable to open '%s' for writting.\n",output);
     else
     {
      while (isize > 0)
      {
       m = fread(buf, sizeof(char), (isize < MAX_SEAMA_META_SIZE) ? isize : MAX_SEAMA_META_SIZE, ifh);
       if (m <= 0) break;
       fwrite(buf, sizeof(char), m, ofh);
       isize -= m;
      }
      fclose(ofh);
     }
     done++;
     break;
    }
   }
   while (isize > 0)
   {
    m = fread(buf, sizeof(char), (isize < MAX_SEAMA_META_SIZE) ? isize : MAX_SEAMA_META_SIZE, ifh);
    if (m <= 0) break;
    isize -= m;
   }
  }

  fclose(ifh);
  if (done) break;
 }
 return;
}
