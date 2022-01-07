
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TINF_TREE ;
typedef int TINF_DATA ;


 int TINF_DATA_ERROR ;
 int TINF_OK ;
 int UZLIB_DUMP_ARRAY (char*,unsigned char*,unsigned int) ;
 size_t* clcidx ;
 int printf (char*,unsigned int) ;
 int tinf_build_tree (int *,unsigned char*,unsigned int) ;
 int tinf_decode_symbol (int *,int *) ;
 unsigned int tinf_read_bits (int *,int,int) ;

__attribute__((used)) static int tinf_decode_trees(TINF_DATA *d, TINF_TREE *lt, TINF_TREE *dt)
{

   unsigned char lengths[288+32];
   unsigned int hlit, hdist, hclen, hlimit;
   unsigned int i, num, length;


   hlit = tinf_read_bits(d, 5, 257);


   hdist = tinf_read_bits(d, 5, 1);


   hclen = tinf_read_bits(d, 4, 4);

   for (i = 0; i < 19; ++i) lengths[i] = 0;


   for (i = 0; i < hclen; ++i)
   {

      unsigned int clen = tinf_read_bits(d, 3, 0);

      lengths[clcidx[i]] = clen;
   }


   tinf_build_tree(lt, lengths, 19);


   hlimit = hlit + hdist;
   for (num = 0; num < hlimit; )
   {
      int sym = tinf_decode_symbol(d, lt);
      unsigned char fill_value = 0;
      int lbits, lbase = 3;


      if (sym < 0) return sym;

      switch (sym)
      {
      case 16:

         if (num == 0) return TINF_DATA_ERROR;
         fill_value = lengths[num - 1];
         lbits = 2;
         break;
      case 17:

         lbits = 3;
         break;
      case 18:

         lbits = 7;
         lbase = 11;
         break;
      default:

         lengths[num++] = sym;

         continue;
      }


      length = tinf_read_bits(d, lbits, lbase);
      if (num + length > hlimit) return TINF_DATA_ERROR;
      for (; length; --length)
      {
         lengths[num++] = fill_value;
      }
   }
   tinf_build_tree(lt, lengths, hlit);
   tinf_build_tree(dt, lengths + hlit, hdist);

   return TINF_OK;
}
