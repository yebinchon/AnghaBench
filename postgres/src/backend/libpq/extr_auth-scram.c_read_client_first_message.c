
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char cbind_flag; void* client_nonce; void* client_username; void* client_first_message_bare; int channel_binding_in_use; TYPE_1__* port; } ;
typedef TYPE_2__ scram_state ;
struct TYPE_4__ {int ssl_in_use; } ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;
 int is_scram_printable (void*) ;
 void* pstrdup (char const*) ;
 int read_any_attr (char**,int *) ;
 void* read_attr_value (char**,char) ;
 int sanitize_char (char) ;
 int sanitize_str (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
read_client_first_message(scram_state *state, const char *input)
{
 char *p = pstrdup(input);
 char *channel_binding_type;
 state->cbind_flag = *p;
 switch (*p)
 {
  case 'n':





   if (state->channel_binding_in_use)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("malformed SCRAM message"),
       errdetail("The client selected SCRAM-SHA-256-PLUS, but the SCRAM message does not include channel binding data.")));

   p++;
   if (*p != ',')
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("malformed SCRAM message"),
       errdetail("Comma expected, but found character \"%s\".",
           sanitize_char(*p))));
   p++;
   break;
  case 'y':






   if (state->channel_binding_in_use)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("malformed SCRAM message"),
       errdetail("The client selected SCRAM-SHA-256-PLUS, but the SCRAM message does not include channel binding data.")));
   p++;
   if (*p != ',')
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("malformed SCRAM message"),
       errdetail("Comma expected, but found character \"%s\".",
           sanitize_char(*p))));
   p++;
   break;
  case 'p':





   if (!state->channel_binding_in_use)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("malformed SCRAM message"),
       errdetail("The client selected SCRAM-SHA-256 without channel binding, but the SCRAM message includes channel binding data.")));

   channel_binding_type = read_attr_value(&p, 'p');





   if (strcmp(channel_binding_type, "tls-server-end-point") != 0)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       (errmsg("unsupported SCRAM channel-binding type \"%s\"",
         sanitize_str(channel_binding_type)))));
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("malformed SCRAM message"),
      errdetail("Unexpected channel-binding flag \"%s\".",
          sanitize_char(*p))));
 }




 if (*p == 'a')
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("client uses authorization identity, but it is not supported")));
 if (*p != ',')
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Unexpected attribute \"%s\" in client-first-message.",
         sanitize_char(*p))));
 p++;

 state->client_first_message_bare = pstrdup(p);
 if (*p == 'm')
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("client requires an unsupported SCRAM extension")));






 state->client_username = read_attr_value(&p, 'n');


 state->client_nonce = read_attr_value(&p, 'r');
 if (!is_scram_printable(state->client_nonce))
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("non-printable characters in SCRAM nonce")));





 while (*p != '\0')
  read_any_attr(&p, ((void*)0));


}
