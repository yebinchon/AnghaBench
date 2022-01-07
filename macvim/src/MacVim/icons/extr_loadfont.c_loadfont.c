
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef scalar_t__ OSStatus ;
typedef int FSSpec ;
typedef int FSRef ;
typedef int CFURLRef ;
typedef int CFStringRef ;
typedef int ATSFontContainerRef ;


 scalar_t__ ATSFontActivateFromFileReference (int *,int ,int ,int *,int ,int *) ;
 scalar_t__ ATSFontActivateFromFileSpecification (int *,int ,int ,int *,int ,int *) ;
 int CFRelease (int ) ;
 int CFStringCreateWithCString (int ,char const*,int ) ;
 int CFURLCreateWithFileSystemPath (int ,int ,int ,int) ;
 scalar_t__ CFURLGetFSRef (int ,int *) ;
 scalar_t__ FSGetCatalogInfo (int *,int ,int *,int *,int *,int *) ;
 int PyArg_ParseTuple (int *,char*,char const**) ;
 int * Py_False ;
 int * Py_True ;
 int kATSFontContextLocal ;
 int kATSFontFormatUnspecified ;
 int kATSOptionFlagsDefault ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingUTF8 ;
 int kCFURLPOSIXPathStyle ;
 int kFSCatInfoNone ;
 scalar_t__ noErr ;

__attribute__((used)) static PyObject* loadfont(PyObject* self, PyObject* args) {
  PyObject* result = Py_False;
  const char* path = ((void*)0);
  int ok = PyArg_ParseTuple(args, "s", &path);

  if (ok) {
    CFStringRef componentPath = CFStringCreateWithCString(kCFAllocatorDefault,
        path, kCFStringEncodingUTF8);
    CFURLRef componentURL = CFURLCreateWithFileSystemPath(kCFAllocatorDefault,
        componentPath, kCFURLPOSIXPathStyle, 0);
    FSRef fsref;

    if (CFURLGetFSRef(componentURL, &fsref)) {
      OSStatus err = noErr;
      ATSFontContainerRef fontContainerRef;





      FSSpec fsSpec;
      FSRef fsRef;
      if ((err = FSGetCatalogInfo(
              &fsRef, kFSCatInfoNone, ((void*)0), ((void*)0), &fsSpec, ((void*)0))) == noErr) {
        err = ATSFontActivateFromFileSpecification(&fsSpec,
            kATSFontContextLocal, kATSFontFormatUnspecified, ((void*)0),
            kATSOptionFlagsDefault, &fontContainerRef);
      }



      if (err == noErr) {
        result = Py_True;
      }
    }
    CFRelease(componentURL);
    CFRelease(componentPath);
  }
  return result;
}
