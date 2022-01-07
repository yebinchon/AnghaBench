
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BEGINLEN ;
 int BIO_gets (int *,char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int LINESIZE ;
 unsigned int PEM_FLAG_ONLY_B64 ;
 int PEM_F_GET_NAME ;
 int PEM_R_NO_START_LINE ;
 int PEMerr (int ,int ) ;
 int TAILLEN ;
 int beginstr ;
 int memcpy (char*,char*,int) ;
 int pem_free (char*,unsigned int,int) ;
 char* pem_malloc (int,unsigned int) ;
 int sanitize_line (char*,int,unsigned int,int) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int tailstr ;

__attribute__((used)) static int get_name(BIO *bp, char **name, unsigned int flags)
{
    char *linebuf;
    int ret = 0;
    int len;
    int first_call = 1;





    linebuf = pem_malloc(LINESIZE + 1, flags);
    if (linebuf == ((void*)0)) {
        PEMerr(PEM_F_GET_NAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    do {
        len = BIO_gets(bp, linebuf, LINESIZE);

        if (len <= 0) {
            PEMerr(PEM_F_GET_NAME, PEM_R_NO_START_LINE);
            goto err;
        }


        len = sanitize_line(linebuf, len, flags & ~PEM_FLAG_ONLY_B64, first_call);
        first_call = 0;


    } while (strncmp(linebuf, beginstr, BEGINLEN) != 0
             || len < TAILLEN
             || strncmp(linebuf + len - TAILLEN, tailstr, TAILLEN) != 0);
    linebuf[len - TAILLEN] = '\0';
    len = len - BEGINLEN - TAILLEN + 1;
    *name = pem_malloc(len, flags);
    if (*name == ((void*)0)) {
        PEMerr(PEM_F_GET_NAME, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    memcpy(*name, linebuf + BEGINLEN, len);
    ret = 1;

err:
    pem_free(linebuf, flags, LINESIZE + 1);
    return ret;
}
