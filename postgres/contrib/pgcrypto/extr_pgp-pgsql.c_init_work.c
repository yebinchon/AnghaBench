
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int text ;
struct debug_expect {scalar_t__ debug; } ;
typedef int PGP_Context ;


 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int fill_expect (struct debug_expect*,int) ;
 int parse_args (int *,int *,int ,struct debug_expect*) ;
 int pgp_init (int **) ;
 int pgp_set_text_mode (int *,int) ;
 int px_THROW_ERROR (int) ;
 int px_set_debug_handler (int ) ;
 int show_debug ;

__attribute__((used)) static void
init_work(PGP_Context **ctx_p, int is_text,
    text *args, struct debug_expect *ex)
{
 int err = pgp_init(ctx_p);

 fill_expect(ex, is_text);

 if (err == 0 && args != ((void*)0))
  err = parse_args(*ctx_p, (uint8 *) VARDATA_ANY(args),
       VARSIZE_ANY_EXHDR(args), ex);

 if (err)
  px_THROW_ERROR(err);

 if (ex->debug)
  px_set_debug_handler(show_debug);

 pgp_set_text_mode(*ctx_p, is_text);
}
