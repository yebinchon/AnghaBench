
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int hints ;


 int E_SOCKET_ERROR ;
 int E_TYPE_ERROR ;
 char* RSTRING_CSTR (int *,int ) ;
 char* RSTRING_PTR (int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 scalar_t__ mrb_cptr (int ) ;
 scalar_t__ mrb_cptr_p (int ) ;
 int mrb_cptr_value (int *,struct addrinfo*) ;
 int mrb_cv_get (int *,int ,int ) ;
 int mrb_cv_set (int *,int ,int ,int ) ;
 scalar_t__ mrb_fixnum (int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 int mrb_fixnum_to_str (int *,int ,int) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ,int ,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_get_args (int *,char*,int *,int *,int *,int *,int *,scalar_t__*) ;
 int mrb_intern_lit (int *,char*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new (int *,char*,int ) ;
 scalar_t__ mrb_string_p (int ) ;

__attribute__((used)) static mrb_value
mrb_addrinfo_getaddrinfo(mrb_state *mrb, mrb_value klass)
{
  struct addrinfo hints, *res0, *res;
  mrb_value ai, ary, family, lastai, nodename, protocol, sa, service, socktype;
  mrb_int flags;
  int arena_idx, error;
  const char *hostname = ((void*)0), *servname = ((void*)0);

  ary = mrb_ary_new(mrb);
  arena_idx = mrb_gc_arena_save(mrb);

  family = socktype = protocol = mrb_nil_value();
  flags = 0;
  mrb_get_args(mrb, "oo|oooi", &nodename, &service, &family, &socktype, &protocol, &flags);

  if (mrb_string_p(nodename)) {
    hostname = RSTRING_CSTR(mrb, nodename);
  } else if (mrb_nil_p(nodename)) {
    hostname = ((void*)0);
  } else {
    mrb_raise(mrb, E_TYPE_ERROR, "nodename must be String or nil");
  }

  if (mrb_string_p(service)) {
    servname = RSTRING_CSTR(mrb, service);
  } else if (mrb_fixnum_p(service)) {
    servname = RSTRING_PTR(mrb_fixnum_to_str(mrb, service, 10));
  } else if (mrb_nil_p(service)) {
    servname = ((void*)0);
  } else {
    mrb_raise(mrb, E_TYPE_ERROR, "service must be String, Fixnum, or nil");
  }

  memset(&hints, 0, sizeof(hints));
  hints.ai_flags = (int)flags;

  if (mrb_fixnum_p(family)) {
    hints.ai_family = (int)mrb_fixnum(family);
  }

  if (mrb_fixnum_p(socktype)) {
    hints.ai_socktype = (int)mrb_fixnum(socktype);
  }

  if (mrb_fixnum_p(protocol)) {
    hints.ai_protocol = (int)mrb_fixnum(protocol);
  }

  lastai = mrb_cv_get(mrb, klass, mrb_intern_lit(mrb, "_lastai"));
  if (mrb_cptr_p(lastai)) {
    freeaddrinfo((struct addrinfo*)mrb_cptr(lastai));
    mrb_cv_set(mrb, klass, mrb_intern_lit(mrb, "_lastai"), mrb_nil_value());
  }

  error = getaddrinfo(hostname, servname, &hints, &res0);
  if (error) {
    mrb_raisef(mrb, E_SOCKET_ERROR, "getaddrinfo: %s", gai_strerror(error));
  }
  mrb_cv_set(mrb, klass, mrb_intern_lit(mrb, "_lastai"), mrb_cptr_value(mrb, res0));

  for (res = res0; res != ((void*)0); res = res->ai_next) {
    sa = mrb_str_new(mrb, (char*)res->ai_addr, res->ai_addrlen);
    ai = mrb_funcall(mrb, klass, "new", 4, sa, mrb_fixnum_value(res->ai_family), mrb_fixnum_value(res->ai_socktype), mrb_fixnum_value(res->ai_protocol));
    mrb_ary_push(mrb, ary, ai);
    mrb_gc_arena_restore(mrb, arena_idx);
  }

  freeaddrinfo(res0);
  mrb_cv_set(mrb, klass, mrb_intern_lit(mrb, "_lastai"), mrb_nil_value());

  return ary;
}
