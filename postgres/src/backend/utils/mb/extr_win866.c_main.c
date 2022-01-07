
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int exit (int) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,int) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,int*,int*) ;
 int stderr ;
 int stdin ;

main()
{
 int i;
 char koitab[128],
    alttab[128];
 char buf[4096];
 int koi,
    alt;

 for (i = 0; i < 128; i++)
  koitab[i] = alttab[i] = 0;

 while (fgets(buf, sizeof(buf), stdin) != ((void*)0))
 {
  if (*buf == '#')
   continue;
  sscanf(buf, "%d %d", &koi, &alt);
  if (koi < 128 || koi > 255 || alt < 128 || alt > 255)
  {
   fprintf(stderr, "invalid value %d\n", koi);
   exit(1);
  }
  koitab[koi - 128] = alt;
  alttab[alt - 128] = koi;
 }

 i = 0;
 printf("static char koi2alt[] = {\n");
 while (i < 128)
 {
  int j = 0;

  while (j < 8)
  {
   printf("0x%02x", koitab[i++]);
   j++;
   if (i >= 128)
    break;
   printf(", ");
  }
  printf("\n");
 }
 printf("};\n");

 i = 0;
 printf("static char alt2koi[] = {\n");
 while (i < 128)
 {
  int j = 0;

  while (j < 8)
  {
   printf("0x%02x", alttab[i++]);
   j++;
   if (i >= 128)
    break;
   printf(", ");
  }
  printf("\n");
 }
 printf("};\n");
}
