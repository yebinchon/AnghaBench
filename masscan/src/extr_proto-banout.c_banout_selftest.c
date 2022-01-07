
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {scalar_t__ next; } ;
struct BannerBase64 {int dummy; } ;


 int banout_append (struct BannerOutput*,int,char*,int) ;
 int banout_append_base64 (struct BannerOutput*,int,char*,int,struct BannerBase64*) ;
 int banout_finalize_base64 (struct BannerOutput*,int,struct BannerBase64*) ;
 int banout_init (struct BannerOutput*) ;
 int banout_init_base64 (struct BannerBase64*) ;
 int banout_release (struct BannerOutput*) ;
 int banout_string_equals (struct BannerOutput*,int,char*) ;
 int banout_string_length (struct BannerOutput*,int) ;

int
banout_selftest(void)
{



    {
        struct BannerOutput banout[1];
        unsigned i;

        banout_init(banout);

        for (i=0; i<10; i++) {
            banout_append(banout, 1, "xxxx", 4);
            banout_append(banout, 2, "yyyyy", 5);
        }

        if (banout->next == 0)
            return 1;
        if (banout_string_length(banout, 1) != 40)
            return 1;
        if (banout_string_length(banout, 2) != 50)
            return 1;

        banout_release(banout);
        if (banout->next != 0)
            return 1;
    }






    {
        struct BannerOutput banout[1];
        struct BannerBase64 base64[1];

        banout_init(banout);

        banout_init_base64(base64);
        banout_append_base64(banout, 1, "x", 1, base64);
        banout_finalize_base64(banout, 1, base64);

        banout_init_base64(base64);
        banout_append_base64(banout, 2, "bc", 2, base64);
        banout_finalize_base64(banout, 2, base64);

        banout_init_base64(base64);
        banout_append_base64(banout, 3, "mno", 3, base64);
        banout_finalize_base64(banout, 3, base64);

        banout_init_base64(base64);
        banout_append_base64(banout, 4, "stuv", 4, base64);
        banout_finalize_base64(banout, 4, base64);

        banout_init_base64(base64);
        banout_append_base64(banout, 5, "fghij", 5, base64);
        banout_finalize_base64(banout, 5, base64);


        if (!banout_string_equals(banout, 1, "eA=="))
            return 1;
        if (!banout_string_equals(banout, 2, "YmM="))
            return 1;
        if (!banout_string_equals(banout, 3, "bW5v"))
            return 1;
        if (!banout_string_equals(banout, 4, "c3R1dg=="))
            return 1;
        if (!banout_string_equals(banout, 5, "ZmdoaWo="))
            return 1;

        banout_release(banout);
    }


    return 0;
}
