
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {char* sct_text_file; int sct_dir; int sct_list; } ;
typedef int SCT ;


 int CT_LOG_ENTRY_TYPE_X509 ;
 int EXECUTE_CT_TEST () ;
 int SCT_VERSION_V1 ;
 int * SCT_new_from_base64 (int ,char const*,int ,int const,char const*,char const*) ;
 int SETUP_CT_TEST_FIXTURE () ;
 int TEST_ptr (int *) ;
 int ct_dir ;
 TYPE_1__* fixture ;
 int result ;
 int sk_SCT_new_null () ;
 int sk_SCT_push (int ,int *) ;

__attribute__((used)) static int test_encode_tls_sct(void)
{
    const char log_id[] = "3xwuwRUAlFJHqWFoMl3cXHlZ6PfG04j8AC4LvT9012Q=";
    const uint64_t timestamp = 1;
    const char extensions[] = "";
    const char signature[] = "BAMARzBAMiBIL2dRrzXbplQ2vh/WZA89v5pBQpSVkkUwKI+j5"
            "eI+BgIhAOTtwNs6xXKx4vXoq2poBlOYfc9BAn3+/6EFUZ2J7b8I";
    SCT *sct = ((void*)0);

    SETUP_CT_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;

    fixture->sct_list = sk_SCT_new_null();
    if (!TEST_ptr(sct = SCT_new_from_base64(SCT_VERSION_V1, log_id,
                                            CT_LOG_ENTRY_TYPE_X509, timestamp,
                                            extensions, signature)))

        return 0;

    sk_SCT_push(fixture->sct_list, sct);
    fixture->sct_dir = ct_dir;
    fixture->sct_text_file = "tls1.sct";
    EXECUTE_CT_TEST();
    return result;
}
