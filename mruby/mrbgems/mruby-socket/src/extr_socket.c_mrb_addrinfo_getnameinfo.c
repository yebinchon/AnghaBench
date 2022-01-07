
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_SOCKET_ERROR ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int ,scalar_t__,int ,scalar_t__,int ,int) ;
 int mrb_ary_new_capa (int *,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_get_args (int *,char*,scalar_t__*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_buf_new (int *,int ) ;
 int mrb_str_resize (int *,int ,int ) ;
 int mrb_string_p (int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static mrb_value
mrb_addrinfo_getnameinfo(mrb_state *mrb, mrb_value self)
{
  mrb_int flags;
  mrb_value ary, host, sastr, serv;
  int error;

  flags = 0;
  mrb_get_args(mrb, "|i", &flags);
  host = mrb_str_buf_new(mrb, NI_MAXHOST);
  serv = mrb_str_buf_new(mrb, NI_MAXSERV);

  sastr = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@sockaddr"));
  if (!mrb_string_p(sastr)) {
    mrb_raise(mrb, E_SOCKET_ERROR, "invalid sockaddr");
  }
  error = getnameinfo((struct sockaddr *)RSTRING_PTR(sastr), (socklen_t)RSTRING_LEN(sastr), RSTRING_PTR(host), NI_MAXHOST, RSTRING_PTR(serv), NI_MAXSERV, (int)flags);
  if (error) {
    mrb_raisef(mrb, E_SOCKET_ERROR, "getnameinfo: %s", gai_strerror(error));
  }
  ary = mrb_ary_new_capa(mrb, 2);
  mrb_str_resize(mrb, host, strlen(RSTRING_PTR(host)));
  mrb_ary_push(mrb, ary, host);
  mrb_str_resize(mrb, serv, strlen(RSTRING_PTR(serv)));
  mrb_ary_push(mrb, ary, serv);
  return ary;
}
