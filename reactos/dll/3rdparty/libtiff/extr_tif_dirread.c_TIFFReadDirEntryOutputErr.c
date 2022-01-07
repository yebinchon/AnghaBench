
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_3__ {int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*,char const*) ;







 int TIFFWarningExt (int ,char const*,char*,char const*) ;
 int assert (int ) ;

__attribute__((used)) static void TIFFReadDirEntryOutputErr(TIFF* tif, enum TIFFReadDirEntryErr err, const char* module, const char* tagname, int recover)
{
 if (!recover) {
  switch (err) {
   case 133:
    TIFFErrorExt(tif->tif_clientdata, module,
          "Incorrect count for \"%s\"",
          tagname);
    break;
   case 128:
    TIFFErrorExt(tif->tif_clientdata, module,
          "Incompatible type for \"%s\"",
          tagname);
    break;
   case 132:
    TIFFErrorExt(tif->tif_clientdata, module,
          "IO error during reading of \"%s\"",
          tagname);
    break;
   case 130:
    TIFFErrorExt(tif->tif_clientdata, module,
          "Incorrect value for \"%s\"",
          tagname);
    break;
   case 131:
    TIFFErrorExt(tif->tif_clientdata, module,
   "Cannot handle different values per sample for \"%s\"",
          tagname);
    break;
   case 129:
    TIFFErrorExt(tif->tif_clientdata, module,
    "Sanity check on size of \"%s\" value failed",
          tagname);
    break;
   case 134:
    TIFFErrorExt(tif->tif_clientdata, module,
          "Out of memory reading of \"%s\"",
          tagname);
    break;
   default:
    assert(0);
    break;
  }
 } else {
  switch (err) {
   case 133:
    TIFFWarningExt(tif->tif_clientdata, module,
    "Incorrect count for \"%s\"; tag ignored",
          tagname);
    break;
   case 128:
    TIFFWarningExt(tif->tif_clientdata, module,
    "Incompatible type for \"%s\"; tag ignored",
            tagname);
    break;
   case 132:
    TIFFWarningExt(tif->tif_clientdata, module,
   "IO error during reading of \"%s\"; tag ignored",
            tagname);
    break;
   case 130:
    TIFFWarningExt(tif->tif_clientdata, module,
    "Incorrect value for \"%s\"; tag ignored",
            tagname);
    break;
   case 131:
    TIFFWarningExt(tif->tif_clientdata, module,
 "Cannot handle different values per sample for \"%s\"; tag ignored",
            tagname);
    break;
   case 129:
    TIFFWarningExt(tif->tif_clientdata, module,
  "Sanity check on size of \"%s\" value failed; tag ignored",
            tagname);
    break;
   case 134:
    TIFFWarningExt(tif->tif_clientdata, module,
    "Out of memory reading of \"%s\"; tag ignored",
            tagname);
    break;
   default:
    assert(0);
    break;
  }
 }
}
