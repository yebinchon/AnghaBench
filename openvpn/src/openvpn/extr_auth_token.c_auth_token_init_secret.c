
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key_ctx {int dummy; } ;
struct key {int dummy; } ;
struct buffer {int dummy; } ;
typedef int key ;


 int M_FATAL ;
 struct buffer alloc_buf (int) ;
 struct key_type auth_token_kt () ;
 int auth_token_pem_name ;
 int buf_read (struct buffer*,struct key*,int) ;
 int free_buf (struct buffer*) ;
 int generate_ephemeral_key (struct buffer*,int ) ;
 int init_key_ctx (struct key_ctx*,struct key*,struct key_type*,int,char*) ;
 int msg (int ,char*) ;
 int read_pem_key_file (struct buffer*,int ,char const*,char const*) ;

void
auth_token_init_secret(struct key_ctx *key_ctx, const char *key_file,
                       const char *key_inline)
{
    struct key_type kt = auth_token_kt();

    struct buffer server_secret_key = alloc_buf(2048);

    bool key_loaded = 0;
    if (key_file)
    {
        key_loaded = read_pem_key_file(&server_secret_key,
                                       auth_token_pem_name,
                                       key_file, key_inline);
    }
    else
    {
        key_loaded = generate_ephemeral_key(&server_secret_key,
                                            auth_token_pem_name);
    }

    if (!key_loaded)
    {
        msg(M_FATAL, "ERROR: Cannot load auth-token secret");
    }

    struct key key;

    if (!buf_read(&server_secret_key, &key, sizeof(key)))
    {
        msg(M_FATAL, "ERROR: not enough data in auth-token secret");
    }
    init_key_ctx(key_ctx, &key, &kt, 0, "auth-token secret");

    free_buf(&server_secret_key);
}
