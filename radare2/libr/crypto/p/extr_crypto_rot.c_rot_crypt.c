
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;


 char mod (char,int) ;

__attribute__((used)) static void rot_crypt(ut8 key, const ut8 *inbuf, ut8 *outbuf, int buflen) {
 int i;
 for (i = 0; i < buflen; i++) {
  outbuf[i] = inbuf[i];
  if ((inbuf[i] < 'a' || inbuf[i] > 'z') && (inbuf[i] < 'A' || inbuf[i] > 'Z')) {
   continue;
  }
  outbuf[i] += key;
  outbuf[i] -= (inbuf[i] >= 'a' && inbuf[i] <= 'z') ? 'a' : 'A';
  outbuf[i] = mod (outbuf[i], 26);
  outbuf[i] += (inbuf[i] >= 'a' && inbuf[i] <= 'z') ? 'a' : 'A';
 }
}
