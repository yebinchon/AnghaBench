#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 scalar_t__ E2BIG ; 
 scalar_t__ ICONV_CSNMAXLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ errno ; 
 size_t FUNC3 (scalar_t__,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static char* FUNC7(const char* src, int src_len, int *new_len, const char* from_enc, const char* to_enc) {
   char* outbuf = 0;

   if(src && src_len && from_enc && to_enc) {
      size_t outlenleft = src_len;
      size_t inlenleft = src_len;
      int outlen = src_len;
      iconv_t ic;
      char* out_ptr = 0;

      if(FUNC6(to_enc) >= ICONV_CSNMAXLEN || FUNC6(from_enc) >= ICONV_CSNMAXLEN) {
         return NULL;
      }
      ic = FUNC5(to_enc, from_enc);
      if(ic != (iconv_t)-1) {
         size_t st;
         outbuf = (char*)FUNC1(outlen + 1);

         out_ptr = (char*)outbuf;
         while(inlenleft) {
            st = FUNC3(ic, (char**)&src, &inlenleft, &out_ptr, &outlenleft);
            if(st == -1) {
               if(errno == E2BIG) {
                  int diff = out_ptr - outbuf;
                  outlen += inlenleft;
                  outlenleft += inlenleft;
                  outbuf = (char*)FUNC2(outbuf, outlen + 1);
                  out_ptr = outbuf + diff;
               }
               else {
                  FUNC0(outbuf);
                  outbuf = 0;
                  break;
               }
            }
         }
         FUNC4(ic);
      }
      outlen -= outlenleft;

      if(new_len) {
         *new_len = outbuf ? outlen : 0;
      }
      if(outbuf) {
         outbuf[outlen] = 0;
      }
   }
   return outbuf;
}