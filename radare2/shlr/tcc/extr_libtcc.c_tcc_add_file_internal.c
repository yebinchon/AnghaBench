
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nb_target_deps; int target_deps; } ;
typedef TYPE_1__ TCCState ;


 int AFF_PREPROCESS ;
 int AFF_PRINT_ERROR ;
 int PATHCMP (char const*,char*) ;
 int dynarray_add (void***,int *,int ) ;
 int strdup (char const*) ;
 int tcc_close () ;
 int tcc_compile (TYPE_1__*) ;
 int tcc_error (char*,...) ;
 char* tcc_fileextension (char const*) ;
 int tcc_open (TYPE_1__*,char const*) ;
 int tcc_preprocess (TYPE_1__*) ;

int tcc_add_file_internal(TCCState *s1, const char *filename, int flags)
{
 const char *ext;
 int ret;


 ext = tcc_fileextension (filename);
 if (ext[0]) {
  ext++;
 }


 ret = tcc_open (s1, filename);
 if (ret < 0) {
  if (flags & AFF_PRINT_ERROR) {
   tcc_error ("file '%s' not found", filename);
  }
  return ret;
 }


 dynarray_add ((void ***) &s1->target_deps, &s1->nb_target_deps,
  strdup (filename));

 if (flags & AFF_PREPROCESS) {
  ret = tcc_preprocess (s1);
  goto the_end;
 }

 if (!ext[0] || !PATHCMP (ext, "c") || !PATHCMP (ext, "h") || !PATHCMP (ext, "cparse")) {

  ret = tcc_compile (s1);
  goto the_end;
 }
 if (ret < 0) {
  tcc_error ("unrecognized file type");
 }

the_end:
 tcc_close ();
 return ret;
}
