
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int member_0; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int server_key ;


 char* BPTR (struct buffer*) ;
 int M_ERR ;
 int M_NONFATAL ;
 int M_WARN ;
 int buf_clear (struct buffer*) ;
 int buf_set_read (struct buffer*,void*,int) ;
 int buffer_write_file (char const*,struct buffer*) ;
 struct buffer clear_buf () ;
 int crypto_pem_encode (char const*,struct buffer*,struct buffer*,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*) ;
 int printf (char*,char*) ;
 int rand_bytes (void*,int) ;
 int secure_memzero (struct key*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

void
write_pem_key_file(const char *filename, const char *pem_name)
{
    struct gc_arena gc = gc_new();
    struct key server_key = { 0 };
    struct buffer server_key_buf = clear_buf();
    struct buffer server_key_pem = clear_buf();

    if (!rand_bytes((void *)&server_key, sizeof(server_key)))
    {
        msg(M_NONFATAL, "ERROR: could not generate random key");
        goto cleanup;
    }
    buf_set_read(&server_key_buf, (void *)&server_key, sizeof(server_key));
    if (!crypto_pem_encode(pem_name, &server_key_pem,
                           &server_key_buf, &gc))
    {
        msg(M_WARN, "ERROR: could not PEM-encode key");
        goto cleanup;
    }

    if (!filename || strcmp(filename, "")==0)
    {
        printf("%s\n", BPTR(&server_key_pem));
    }
    else if (!buffer_write_file(filename, &server_key_pem))
    {
        msg(M_ERR, "ERROR: could not write key file");
        goto cleanup;
    }

cleanup:
    secure_memzero(&server_key, sizeof(server_key));
    buf_clear(&server_key_pem);
    gc_free(&gc);
    return;
}
