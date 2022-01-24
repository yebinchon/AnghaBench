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
typedef  int /*<<< orphan*/  TINF_TREE ;
typedef  int /*<<< orphan*/  TINF_DATA ;

/* Variables and functions */
 int TINF_DATA_ERROR ; 
 int TINF_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned int) ; 
 size_t* clcidx ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(TINF_DATA *d, TINF_TREE *lt, TINF_TREE *dt)
{
   /* code lengths for 288 literal/len symbols and 32 dist symbols */
   unsigned char lengths[288+32];
   unsigned int hlit, hdist, hclen, hlimit;
   unsigned int i, num, length;

   /* get 5 bits HLIT (257-286) */
   hlit = FUNC4(d, 5, 257);

   /* get 5 bits HDIST (1-32) */
   hdist = FUNC4(d, 5, 1);

   /* get 4 bits HCLEN (4-19) */
   hclen = FUNC4(d, 4, 4);

   for (i = 0; i < 19; ++i) lengths[i] = 0;

   /* read code lengths for code length alphabet */
   for (i = 0; i < hclen; ++i)
   {
      /* get 3 bits code length (0-7) */
      unsigned int clen = FUNC4(d, 3, 0);

      lengths[clcidx[i]] = clen;
   }

   /* build code length tree, temporarily use length tree */
   FUNC2(lt, lengths, 19);

   /* decode code lengths for the dynamic trees */
   hlimit = hlit + hdist;
   for (num = 0; num < hlimit; )
   {
      int sym = FUNC3(d, lt);
      unsigned char fill_value = 0;
      int lbits, lbase = 3;

      /* error decoding */
      if (sym < 0) return sym;

      switch (sym)
      {
      case 16:
         /* copy previous code length 3-6 times (read 2 bits) */
         if (num == 0) return TINF_DATA_ERROR;
         fill_value = lengths[num - 1];
         lbits = 2;
         break;
      case 17:
         /* repeat code length 0 for 3-10 times (read 3 bits) */
         lbits = 3;
         break;
      case 18:
         /* repeat code length 0 for 11-138 times (read 7 bits) */
         lbits = 7;
         lbase = 11;
         break;
      default:
         /* values 0-15 represent the actual code lengths */
         lengths[num++] = sym;
         /* continue the for loop */
         continue;
      }

      /* special code length 16-18 are handled here */
      length = FUNC4(d, lbits, lbase);
      if (num + length > hlimit) return TINF_DATA_ERROR;
      for (; length; --length)
      {
         lengths[num++] = fill_value;
      }
   }

   #if UZLIB_CONF_DEBUG_LOG >= 2
   printf("lit code lengths (%d):", hlit);
   UZLIB_DUMP_ARRAY("", lengths, hlit);
   printf("dist code lengths (%d):", hdist);
   UZLIB_DUMP_ARRAY("", lengths + hlit, hdist);
   #endif

   #if UZLIB_CONF_PARANOID_CHECKS
   /* Check that there's "end of block" symbol */
   if (lengths[256] == 0) {
      return TINF_DATA_ERROR;
   }
   #endif

   /* build dynamic trees */
   FUNC2(lt, lengths, hlit);
   FUNC2(dt, lengths + hlit, hdist);

   return TINF_OK;
}