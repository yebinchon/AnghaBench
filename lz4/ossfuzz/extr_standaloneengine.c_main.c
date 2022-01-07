
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int LLVMFuzzerTestOneInput (int *,size_t) ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ calloc (size_t,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int fread (int *,int,size_t,int *) ;
 int free (int *) ;
 int fseek (int *,long,int ) ;
 size_t ftell (int *) ;
 int printf (char*,...) ;
 int stderr ;

int main(int argc, char **argv)
{
  int ii;
  for(ii = 1; ii < argc; ii++)
  {
    FILE *infile;
    printf("[%s] ", argv[ii]);


    infile = fopen(argv[ii], "rb");
    if(infile)
    {
      uint8_t *buffer = ((void*)0);
      size_t buffer_len;

      printf("Opened.. ");


      fseek(infile, 0L, SEEK_END);
      buffer_len = ftell(infile);


      fseek(infile, 0L, SEEK_SET);


      buffer = (uint8_t *)calloc(buffer_len, sizeof(uint8_t));
      if(buffer)
      {

        fread(buffer, sizeof(uint8_t), buffer_len, infile);
        printf("Read %zu bytes, fuzzing.. ", buffer_len);


        LLVMFuzzerTestOneInput(buffer, buffer_len);

        printf("complete !!");


        free(buffer);
        buffer = ((void*)0);
      }
      else
      {
        fprintf(stderr,
                "[%s] Failed to allocate %zu bytes \n",
                argv[ii],
                buffer_len);
      }


      fclose(infile);
      infile = ((void*)0);
    }
    else
    {

      fprintf(stderr, "[%s] Open failed. \n", argv[ii]);
    }

    printf("\n");
  }
}
