
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fSpec; int gzOut; scalar_t__ mode; void* OF; scalar_t__ FH; } ;
typedef TYPE_1__ ArchiveHandle ;


 int PG_BINARY_A ;
 int PG_BINARY_W ;
 scalar_t__ archModeAppend ;
 int dup (int) ;
 int fatal (char*,...) ;
 void* fdopen (int ,int ) ;
 int fileno (scalar_t__) ;
 void* fopen (char const*,int ) ;
 void* gzdopen (int ,char*) ;
 void* gzopen (char const*,char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stdout ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
SetOutput(ArchiveHandle *AH, const char *filename, int compression)
{
 int fn;

 if (filename)
 {
  if (strcmp(filename, "-") == 0)
   fn = fileno(stdout);
  else
   fn = -1;
 }
 else if (AH->FH)
  fn = fileno(AH->FH);
 else if (AH->fSpec)
 {
  fn = -1;
  filename = AH->fSpec;
 }
 else
  fn = fileno(stdout);
 {
  if (AH->mode == archModeAppend)
  {
   if (fn >= 0)
    AH->OF = fdopen(dup(fn), PG_BINARY_A);
   else
    AH->OF = fopen(filename, PG_BINARY_A);
  }
  else
  {
   if (fn >= 0)
    AH->OF = fdopen(dup(fn), PG_BINARY_W);
   else
    AH->OF = fopen(filename, PG_BINARY_W);
  }
  AH->gzOut = 0;
 }

 if (!AH->OF)
 {
  if (filename)
   fatal("could not open output file \"%s\": %m", filename);
  else
   fatal("could not open output file: %m");
 }
}
