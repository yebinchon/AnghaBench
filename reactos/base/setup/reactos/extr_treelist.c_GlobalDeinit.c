
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteObject (int *) ;
 int InterlockedDecrement (int *) ;
 int * hDefaultFontB ;
 int * hDefaultFontN ;
 int * hPatternPen ;
 int lWindowCount ;
 int pBufferedPtExit () ;

__attribute__((used)) static void GlobalDeinit() {

 int lCount;

 lCount = InterlockedDecrement(&lWindowCount);
 if(lCount >= 0)
  return;

 if(hDefaultFontN) {
  DeleteObject(hDefaultFontN);
  hDefaultFontN = ((void*)0);
 }

 if(hDefaultFontB) {
  DeleteObject(hDefaultFontB);
  hDefaultFontB = ((void*)0);
 }

 if(hPatternPen) {
  DeleteObject(hPatternPen);
  hPatternPen = ((void*)0);
 }

 if(pBufferedPtExit) {
  pBufferedPtExit();
 }

}
