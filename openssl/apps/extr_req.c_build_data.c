
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,...) ;
 scalar_t__ batch ;
 int bio_err ;
 int ebcdic2ascii (char*,char*,int) ;
 int fgets (char*,int const,int ) ;
 int join (char*,int const,char const*,char*,char const*) ;
 int req_check_len (int,int,int) ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static int build_data(char *text, const char *def,
                         char *value, int n_min, int n_max,
                         char *buf, const int buf_size,
                         const char *desc1, const char *desc2
                         )
{
    int i;
 start:
    if (!batch)
        BIO_printf(bio_err, "%s [%s]:", text, def);
    (void)BIO_flush(bio_err);
    if (value != ((void*)0)) {
        if (!join(buf, buf_size, value, "\n", desc1))
            return 0;
        BIO_printf(bio_err, "%s\n", value);
    } else {
        buf[0] = '\0';
        if (!batch) {
            if (!fgets(buf, buf_size, stdin))
                return 0;
        } else {
            buf[0] = '\n';
            buf[1] = '\0';
        }
    }

    if (buf[0] == '\0')
        return 0;
    if (buf[0] == '\n') {
        if ((def == ((void*)0)) || (def[0] == '\0'))
            return 1;
        if (!join(buf, buf_size, def, "\n", desc2))
            return 0;
    } else if ((buf[0] == '.') && (buf[1] == '\n')) {
        return 1;
    }

    i = strlen(buf);
    if (buf[i - 1] != '\n') {
        BIO_printf(bio_err, "weird input :-(\n");
        return 0;
    }
    buf[--i] = '\0';



    if (!req_check_len(i, n_min, n_max)) {
        if (batch || value)
            return 0;
        goto start;
    }
    return 2;
}
