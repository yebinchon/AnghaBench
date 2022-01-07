
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_f_buffer () ;
 int BIO_flush (int *) ;
 int BIO_free (int *) ;
 int BIO_gets (int *,char*,int) ;
 int * BIO_new (int ) ;
 int BIO_pop (int *) ;
 int BIO_printf (int *,char*) ;
 int * BIO_push (int *,int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_write (int *,char*,int) ;
 int MAX_SMLEN ;
 int SMIME_ASCIICRLF ;
 int SMIME_BINARY ;
 int SMIME_TEXT ;
 char strip_eol (char*,int*,int) ;

int SMIME_crlf_copy(BIO *in, BIO *out, int flags)
{
    BIO *bf;
    char eol;
    int len;
    char linebuf[MAX_SMLEN];




    bf = BIO_new(BIO_f_buffer());
    if (bf == ((void*)0))
        return 0;
    out = BIO_push(bf, out);
    if (flags & SMIME_BINARY) {
        while ((len = BIO_read(in, linebuf, MAX_SMLEN)) > 0)
            BIO_write(out, linebuf, len);
    } else {
        int eolcnt = 0;
        if (flags & SMIME_TEXT)
            BIO_printf(out, "Content-Type: text/plain\r\n\r\n");
        while ((len = BIO_gets(in, linebuf, MAX_SMLEN)) > 0) {
            eol = strip_eol(linebuf, &len, flags);
            if (len) {

                if (flags & SMIME_ASCIICRLF) {
                    int i;
                    for (i = 0; i < eolcnt; i++)
                        BIO_write(out, "\r\n", 2);
                    eolcnt = 0;
                }
                BIO_write(out, linebuf, len);
                if (eol)
                    BIO_write(out, "\r\n", 2);
            } else if (flags & SMIME_ASCIICRLF)
                eolcnt++;
            else if (eol)
                BIO_write(out, "\r\n", 2);
        }
    }
    (void)BIO_flush(out);
    BIO_pop(out);
    BIO_free(bf);
    return 1;
}
