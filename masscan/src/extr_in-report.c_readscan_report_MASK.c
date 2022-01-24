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
struct CertDecode {int is_capture_issuer; int is_capture_subject; } ;
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 unsigned char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  PROTO_SSL3 ; 
 unsigned int PROTO_VULN ; 
 unsigned int PROTO_X509_CERT ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*) ; 
 unsigned char* FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (unsigned char*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned char const*,size_t) ; 
 char* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*,size_t) ; 
 scalar_t__ FUNC9 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct CertDecode*,unsigned char*,size_t,struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC13 (struct CertDecode*,size_t) ; 

void
FUNC14(  unsigned ip,
                  unsigned app_proto,
                  unsigned char **r_data,
                  size_t *r_data_length)
{
    size_t data_length = *r_data_length;
    unsigned char *data = *r_data;


    if (app_proto == PROTO_X509_CERT) {
        unsigned char *der = FUNC0(data_length);
        struct CertDecode x;
        size_t der_length;
        struct BannerOutput banout[1];
        const unsigned char *banner;
        size_t banner_length;

        FUNC1(banout);

        der_length = FUNC5(der, data_length, data, data_length);
        
        FUNC13(&x, data_length);
        x.is_capture_issuer = 1;
        x.is_capture_subject = 1;
        FUNC12(&x, der, der_length, banout);

        banner = FUNC3(banout, PROTO_SSL3);
        banner_length = FUNC4(banout, PROTO_SSL3);

        if (banner_length) {
            if (!FUNC8(banner, banner_length))
                FUNC6(ip, banner, banner_length);
        }

        FUNC2(banout);
    /*} else if (0 && app_proto == PROTO_SSL3) {
        cndb_add(ip, data, data_length);*/
    } else if (app_proto == PROTO_VULN) {
        const char *name = FUNC7(ip);
        
        if (data_length == 15 && FUNC9(data, "SSL[heartbeat] ", 15) == 0)
            return;

        if (name && FUNC11(name) < 300) {
            //printf("vuln=%s\n", name);
            ((char*)data)[data_length] = ' ';
            FUNC10((char*)data+data_length+1, name, FUNC11(name)+1);
            data_length += FUNC11(name)+1;
        }

        /* kludge */
        if (data_length == 31 && FUNC9(data, "SSL[heartbeat] SSL[HEARTBLEED] ", 31) == 0)
            return;
    }

}