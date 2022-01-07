
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {scalar_t__ echo; } ;
typedef int foo ;
typedef int buf2 ;
typedef int buf ;
typedef int FILE ;


 unsigned int ARRAY (char const*) ;
 int CONF_ERR ;
 int CONF_OK ;
 int LOG (int ,char*) ;
 size_t base64_encode (char*,int,char*,size_t) ;
 int fclose (int *) ;
 int fopen_s (int **,char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fread (char*,int,int,int *) ;
 int masscan_set_parameter (struct Masscan*,char*,char*) ;
 int perror (char const*) ;
 int sprintf_s (char*,int,char*,unsigned int) ;
 int stderr ;

__attribute__((used)) static int SET_hello_file(struct Masscan *masscan, const char *name, const char *value)
{
    unsigned index;
    FILE *fp;
    int x;
    char buf[16384];
    char buf2[16384];
    size_t bytes_read;
    size_t bytes_encoded;
    char foo[64];

    if (masscan->echo) {


        return 0;
    }

    index = ARRAY(name);
    if (index >= 65536) {
        fprintf(stderr, "%s: bad index\n", name);
        return CONF_ERR;
    }


    x = fopen_s(&fp, value, "rb");
    if (x != 0) {
        LOG(0, "[FAILED] could not read hello file\n");
        perror(value);
        return CONF_ERR;
    }

    bytes_read = fread(buf, 1, sizeof(buf), fp);
    if (bytes_read == 0) {
        LOG(0, "[FAILED] could not read hello file\n");
        perror(value);
        fclose(fp);
        return CONF_ERR;
    }
    fclose(fp);

    bytes_encoded = base64_encode(buf2, sizeof(buf2)-1, buf, bytes_read);
    buf2[bytes_encoded] = '\0';

    sprintf_s(foo, sizeof(foo), "hello-string[%u]", (unsigned)index);

    masscan_set_parameter(masscan, foo, buf2);

    return CONF_OK;
}
