
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int TRANSFER_SIZE ;
 char* convert_path (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int fread (char*,int,int ,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 char* malloc (int ) ;
 int perror (char*) ;
 int stderr ;

int main(int argc, char* argv[])
{
   char* path1;
   char* path2;
   FILE* in;
   FILE* out;
   char* buf;
   int n_in;
   int n_out;

   if (argc != 3)
     {
    fprintf(stderr, "Too many arguments\n");
    exit(1);
     }

   path1 = convert_path(argv[1]);
   path2 = convert_path(argv[2]);

   in = fopen(path1, "rb");
   if (in == ((void*)0))
     {
    perror("Cannot open input file");
    exit(1);
     }



   out = fopen(path2, "wb");
   if (out == ((void*)0))
     {
    perror("Cannot open output file");
    fclose(in);
    exit(1);
     }

   buf = malloc(TRANSFER_SIZE);

   while (!feof(in))
     {
    n_in = fread(buf, 1, TRANSFER_SIZE, in);
    n_out = fwrite(buf, 1, n_in, out);
    if (n_in != n_out)
      {
         perror("Failed to write to output file\n");
         free(buf);
         fclose(in);
         fclose(out);
         exit(1);
      }
     }
   exit(0);
}
